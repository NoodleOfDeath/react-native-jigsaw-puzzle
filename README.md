# React Native Jigsaw Puzzle <!-- omit in toc -->

<p align="center">
  <a href="https://github.com/facebook/react-native/blob/HEAD/LICENSE">
    <img src="https://img.shields.io/badge/license-MIT-blue.svg" alt="React Native is released under the MIT license." />
  </a>
  <a href="https://www.npmjs.org/package/react-native-jigsaw-puzzle">
    <img src="https://img.shields.io/npm/v/react-native-jigsaw-puzzle?color=brightgreen&label=npm%20package" alt="Current npm package version." />
  </a>
  <a href="https://www.npmjs.org/package/react-native-jigsaw-puzzle">
    <img src="https://img.shields.io/npm/dt/react-native-jigsaw-puzzle" alt="Npm downloads." />
  </a>
  <img src="https://img.shields.io/badge/PRs-welcome-brightgreen.svg" alt="PRs welcome!" />
</p>

Jigsaw Puzzle library for iOS and Android.

## Table of Contents <!-- omit in toc -->

- [Installation](#installation)
- [Usage](#usage)

## Installation

```sh
npm install react-native-jigsaw-puzzle
```

or

```sh
yarn add react-native-jigsaw-puzzle
```

Then run `npx pod-install`.

**NOTE:** Screen time only works on device, not the simulator.

## Usage

```javascript
import { ScreenTime } from 'react-native-jigsaw-puzzle';

React.useEffect(() => {
  ScreenTime.requestAuthorization('individual').then(async () => {
    const status = await ScreenTime.getAuthorizationStatus();
    console.log('Authorization status:', status); // 'approved', 'denied', or 'notDetermined'
    await selection = await ScreenTime.displayFamilyActivityPicker();
    console.log('Family activity selection:', selection);
    // selection will be `null` if user presses cancel
    if (selection) {
      await ScreenTime.setActivitySelection(selection); // sets the shields
    }
  });
}, []);
```