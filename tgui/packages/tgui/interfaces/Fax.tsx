import { useBackend } from 'tgui/backend';
import { Window } from 'tgui/layouts';
import {
  Box,
  Button,
  LabeledList,
  NoticeBox,
  Section,
} from 'tgui-core/components';
import { BooleanLike } from 'tgui-core/react';

import { LoginInfo } from './common/LoginInfo';
import { LoginScreen } from './common/LoginScreen';

type Data = {
  scan: string | null;
  authenticated: string | null;
  rank: string;
  isAI: BooleanLike;
  isRobot: BooleanLike;
  adminDepartments: string[];
  bossName: string;
  copyItem: string;
  cooldown: number;
  destination: string;
};

export const Fax = (props) => {
  const { data } = useBackend<Data>();

  const { authenticated, copyItem } = data;

  let variableHeight: number = 340;
  if (copyItem) {
    variableHeight = 358;
  }

  if (!authenticated) {
    return (
      <Window width={600} height={250}>
        <Window.Content>
          <RemoveItem />
          <LoginScreen machineType="Fax" />
        </Window.Content>
      </Window>
    );
  }

  return (
    <Window width={600} height={variableHeight}>
      <Window.Content>
        <RemoveItem />
        <LoginInfo />
        <FaxContent />
      </Window.Content>
    </Window>
  );
};

export const FaxContent = (props) => {
  const { act, data } = useBackend<Data>();

  const { bossName, copyItem, cooldown, destination } = data;

  return (
    <Section>
      {!!cooldown && (
        <NoticeBox info>
          Transmitter arrays realigning. Please stand by.
        </NoticeBox>
      )}
      <LabeledList>
        <LabeledList.Item label="Network">
          {bossName} Quantum Entanglement Network
        </LabeledList.Item>
      </LabeledList>

      {(copyItem && (
        <Box mt={1}>
          <LabeledList>
            <LabeledList.Item label="Currently Sending">
              {copyItem}{' '}
              <Button
                icon="pen"
                onClick={() => act('rename')}
                tooltip={
                  'Renames the paper. This changes its preview in staff chat when sending to centcom/job board/supply (admin departments).\
              It is advisable to name your faxes something self-explanatory for quick response.'
                }
              />
            </LabeledList.Item>
            <LabeledList.Item label="Sending To">
              <Button icon="map-marker-alt" onClick={() => act('dept')}>
                {destination}
              </Button>
            </LabeledList.Item>
          </LabeledList>
          <Button icon="share-square" onClick={() => act('send')} fluid>
            Send
          </Button>
        </Box>
      )) || <Box mt={1}>Please insert item to transmit.</Box>}
      <AutomatedStaffRequest />
    </Section>
  );
};

const RemoveItem = (props) => {
  const { act, data } = useBackend<Data>();

  const { copyItem } = data;

  if (!copyItem) {
    return null;
  }

  return (
    <Box>
      <Button fluid icon="eject" onClick={() => act('remove')}>
        Remove Item
      </Button>
    </Box>
  );
};

const AutomatedStaffRequest = (props) => {
  const { act, data } = useBackend<Data>();

  const { adminDepartments, destination, copyItem } = data;
  const staffRequestDepartment: Set<string> = new Set(adminDepartments);

  let flexiblePadding = '1rem';
  if (copyItem) {
    flexiblePadding = '1.5rem';
  }

  if (!copyItem || (copyItem && staffRequestDepartment.has(destination))) {
    return (
      <Box mt="1.5rem">
        <b>Or submit an automated staff request.</b> <br /> <br />
        <i>
          The automated staff request form automatically populates the company
          job board ((sends to discord, but does not ping.)) without requiring
          intervention from central command clerks and officers. <br />
          It also works without requiring a written request to be composed.
        </i>
        <br />
        <Box mt="1.5rem">
          <Button
            icon="share-square"
            onClick={() => act('send_automated_staff_request')}
            fluid
          >
            Send Automated Staff Request
          </Button>
        </Box>
      </Box>
    );
  } else {
    return null;
  }
};
