const DefaultHandlings = {
    sedan:`<Item type="CHandlingData">
    <handlingName>ASEA</handlingName>
    <fMass value="1300.000000" />
    <fInitialDragCoeff value="1.020000" />
    <fDownforceModifier value="1.210000" />
    <fPercentSubmerged value="85.000000" />
    <vecCentreOfMassOffset x="0.000000" y="-0.170000" z="-0.042000" />
    <vecInertiaMultiplier x="1.150000" y="1.000000" z="1.510000" />
    <fDriveBiasFront value="1.000000" />
    <nInitialDriveGears value="5" />
    <fInitialDriveForce value="0.149400" />
    <fDriveInertia value="0.940000" />
    <fClutchChangeRateScaleUpShift value="1.500000" />
    <fClutchChangeRateScaleDownShift value="1.800000" />
    <fInitialDriveMaxFlatVel value="145.000000" />
    <fBrakeForce value="0.215000" />
    <fBrakeBiasFront value="0.478200" />
    <fHandBrakeForce value="0.700000" />
    <fSteeringLock value="32.800000" />
    <fTractionCurveMax value="1.340000" />
    <fTractionCurveMin value="1.101000" />
    <fTractionCurveLateral value="16.400000" />
    <fTractionSpringDeltaMax value="0.128000" />
    <fLowSpeedTractionLossMult value="0.050000" />
    <fCamberStiffnesss value="0.000000" />
    <fTractionBiasFront value="0.481000" />
    <fTractionLossMult value="1.250000" />
    <fSuspensionForce value="2.310000" />
    <fSuspensionCompDamp value="1.600000" />
    <fSuspensionReboundDamp value="0.350000" />
    <fSuspensionUpperLimit value="0.160000" />
    <fSuspensionLowerLimit value="-0.138000" />
    <fSuspensionRaise value="0.000000" />
    <fSuspensionBiasFront value="0.440000" />
    <fAntiRollBarForce value="0.000000" />
    <fAntiRollBarBiasFront value="0.500000" />
    <fRollCentreHeightFront value="0.345000" />
    <fRollCentreHeightRear value="0.343000" />
    <fCollisionDamageMult value="0.700000" />
    <fWeaponDamageMult value="0.700000" />
    <fDeformationDamageMult value="0.700000" />
    <fEngineDamageMult value="1.300000" />
    <fPetrolTankVolume value="50.000000" />
    <fOilVolume value="4.000000" />
    <fSeatOffsetDistX value="0.000000" />
    <fSeatOffsetDistY value="0.000000" />
    <fSeatOffsetDistZ value="0.000000" />
    <nMonetaryValue value="35000" />
    <strModelFlags>440010</strModelFlags>
    <strHandlingFlags>820100</strHandlingFlags>
    <strDamageFlags>0</strDamageFlags>
    <AIHandling>AVERAGE</AIHandling>
    <SubHandlingData>
      <Item type="CCarHandlingData">
        <fBackEndPopUpCarImpulseMult value="0.100000" />
        <fBackEndPopUpBuildingImpulseMult value="0.030000" />
        <fBackEndPopUpMaxDeltaSpeed value="0.600000" />
      </Item>
      <Item type="NULL" />
      <Item type="NULL" />
    </SubHandlingData>
  </Item>`,
  cycle:`<Item type="CHandlingData">
    <handlingName>BMX</handlingName>
    <fMass value="105.000000" />
    <fInitialDragCoeff value="60.000000" />
    <fPercentSubmerged value="200.000000" />
    <vecCentreOfMassOffset x="0.000000" y="0.000000" z="-0.100000" />
    <vecInertiaMultiplier x="1.000000" y="1.000000" z="1.000000" />
    <fDriveBiasFront value="0.000000" />
    <nInitialDriveGears value="1" />
    <fInitialDriveForce value="0.160000" />
    <fDriveInertia value="1.000000" />
    <fClutchChangeRateScaleUpShift value="1.000000" />
    <fClutchChangeRateScaleDownShift value="1.000000" />
    <fInitialDriveMaxFlatVel value="50.000000" />
    <fBrakeForce value="3.000000" />
    <fBrakeBiasFront value="0.600000" />
    <fHandBrakeForce value="0.900000" />
    <fSteeringLock value="40.000000" />
    <fTractionCurveMax value="1.850000" />
    <fTractionCurveMin value="1.800000" />
    <fTractionCurveLateral value="20.000000" />
    <fTractionSpringDeltaMax value="0.030000" />
    <fLowSpeedTractionLossMult value="0.000000" />
    <fCamberStiffnesss value="0.000000" />
    <fTractionBiasFront value="0.470000" />
    <fTractionLossMult value="0.000000" />
    <fSuspensionForce value="8.500000" />
    <fSuspensionCompDamp value="8.000000" />
    <fSuspensionReboundDamp value="8.600000" />
    <fSuspensionUpperLimit value="0.100000" />
    <fSuspensionLowerLimit value="-0.100000" />
    <fSuspensionRaise value="-0.007000" />
    <fSuspensionBiasFront value="0.500000" />
    <fAntiRollBarForce value="0.000000" />
    <fAntiRollBarBiasFront value="0.000000" />
    <fRollCentreHeightFront value="0.150000" />
    <fRollCentreHeightRear value="0.150000" />
    <fCollisionDamageMult value="0.010000" />
    <fWeaponDamageMult value="1.000000" />
    <fDeformationDamageMult value="0.800000" />
    <fEngineDamageMult value="1.500000" />
    <fPetrolTankVolume value="0.000000" />
    <fOilVolume value="0.000000" />
    <fSeatOffsetDistX value="0.000000" />
    <fSeatOffsetDistY value="0.000000" />
    <fSeatOffsetDistZ value="0.200000" />
    <nMonetaryValue value="12000" />
    <strModelFlags>441010</strModelFlags>
    <strHandlingFlags>1101</strHandlingFlags>
    <strDamageFlags>20</strDamageFlags>
    <AIHandling>AVERAGE</AIHandling>
    <SubHandlingData>
      <Item type="CBikeHandlingData">
        <fLeanFwdCOMMult value="0.000000" />
        <fLeanFwdForceMult value="28.500000" />
        <fLeanBakCOMMult value="0.000000" />
        <fLeanBakForceMult value="40.000000" />
        <fMaxBankAngle value="20.000000" />
        <fFullAnimAngle value="28.000000" />
        <fDesLeanReturnFrac value="0.140000" />
        <fStickLeanMult value="1.000000" />
        <fBrakingStabilityMult value="-8.000000" />
        <fInAirSteerMult value="-9.000000" />
        <fWheelieBalancePoint value="8.000000" />
        <fStoppieBalancePoint value="-10.000000" />
        <fWheelieSteerMult value="-0.500000" />
        <fRearBalanceMult value="200.000000" />
        <fFrontBalanceMult value="145.000000" />
        <fBikeGroundSideFrictionMult value="1.400000" />
        <fBikeWheelGroundSideFrictionMult value="1.100000" />
        <fBikeOnStandLeanAngle value="6.300000" />
        <fBikeOnStandSteerAngle value="0.300000" />
        <fJumpForce value="8.000000" />
      </Item>
      <Item type="NULL" />
      <Item type="NULL" />
    </SubHandlingData>
  </Item>`,
  main: `<Item type="CHandlingData">
      <handlingName>HANDLINGNAME</handlingName>
      <fMass value="2800.000000" />
      <fInitialDragCoeff value="8.000000" />
      <fPercentSubmerged value="85.000000" />
      <vecCentreOfMassOffset x="0.000000" y="0.000000" z="0.000000" />
      <vecInertiaMultiplier x="1.000000" y="1.400000" z="1.600000" />
      <fDriveBiasFront value="0.500000" />
      <nInitialDriveGears value="8" />
      <fInitialDriveForce value="0.355000" />
      <fDriveInertia value="1.000000" />
      <fClutchChangeRateScaleUpShift value="1.900000" />
      <fClutchChangeRateScaleDownShift value="1.900000" />
      <fInitialDriveMaxFlatVel value="250.000000" />
      <fBrakeForce value="0.900000" />
      <fBrakeBiasFront value="0.500000" />
      <fHandBrakeForce value="0.450000" />
      <fSteeringLock value="42.000000" />
      <fTractionCurveMax value="2.250000" />
      <fTractionCurveMin value="1.850000" />
      <fTractionCurveLateral value="22.500000" />
      <fTractionSpringDeltaMax value="0.150000" />
      <fLowSpeedTractionLossMult value="0.800000" />
      <fCamberStiffnesss value="0.000000" />
      <fTractionBiasFront value="0.493000" />
      <fTractionLossMult value="1.000000" />
      <fSuspensionForce value="2.100000" />
      <fSuspensionCompDamp value="1.100000" />
      <fSuspensionReboundDamp value="1.900000" />
      <fSuspensionUpperLimit value="0.090000" />
      <fSuspensionLowerLimit value="-0.140000" />
      <fSuspensionRaise value="0.000000" />
      <fSuspensionBiasFront value="0.470000" />
      <fAntiRollBarForce value="0.900000" />
      <fAntiRollBarBiasFront value="0.640000" />
      <fRollCentreHeightFront value="0.490000" />
      <fRollCentreHeightRear value="0.500000" />
      <fCollisionDamageMult value="1.000000" />
      <fWeaponDamageMult value="1.000000" />
      <fDeformationDamageMult value="0.800000" />
      <fEngineDamageMult value="1.500000" />
      <fPetrolTankVolume value="65.000000" />
      <fOilVolume value="5.500000" />
      <fSeatOffsetDistX value="0.000000" />
      <fSeatOffsetDistY value="0.000000" />
      <fSeatOffsetDistZ value="0.000000" />
      <nMonetaryValue value="35000" />
      <strModelFlags>440010</strModelFlags>
      <strHandlingFlags>0</strHandlingFlags>
      <strDamageFlags>0</strDamageFlags>
      <AIHandling>AVERAGE</AIHandling>
      <SubHandlingData>
        <Item type="CCarHandlingData">
          <fBackEndPopUpCarImpulseMult value="0.100000" />
          <fBackEndPopUpBuildingImpulseMult value="0.030000" />
          <fBackEndPopUpMaxDeltaSpeed value="0.600000" />
        </Item>
        <Item type="NULL" />
        <Item type="NULL" />
      </SubHandlingData>
  </Item>`,
}

var CHandlingData = {
  fMass: {
      Label: 'Mass',
      Group: 'Body',
      Editable: 'true',
      Min: {
          value: '100',
          selfClosing: 'true',
      },
      Max: {
          value: '60000',
          selfClosing: 'true',
      },
      Description:
          'This is the weight of the vehicle in kilograms. Only used when the vehicle collides with another vehicle or non-static object.',
  },
  fInitialDragCoeff: {
      Label: 'Drag coefficient',
      Group: 'Aeor',
      Editable: 'true',
      Min: {
          value: '0.9',
          selfClosing: 'true',
      },
      Max: {
          value: '300',
          selfClosing: 'true',
      },
      Description:
          'Sets the drag coefficient on the rage physics archetype of the vehicle (proportional to velocity squared). Increase to simulate aerodynamic drag.',
  },
  fPercentSubmerged: {
      Label: 'Water floating percentage',
      Group: 'Body',
      Editable: 'true',
      Min: {
          value: '45',
          selfClosing: 'true',
      },
      Max: {
          value: '200',
          selfClosing: 'true',
      },
      Description:
          "A percentage of vehicle height in the water before vehicle 'floats'. So as the vehicle falls into the water, at 85% vehicle height (seemingly the default for road vehicles) it will stop sinking to float for a moment before it sinks (boats excluded).",
  },
  fDriveBiasFront: {
      Label: 'Drive front bias',
      Group: 'Engine',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '1',
          selfClosing: 'true',
      },
      Description: 'This value is used to determine whether a vehicle is front, rear, or four wheel drive.',
  },
  nInitialDriveGears: {
      Label: 'Amount of gears',
      Group: 'Engine',
      Editable: 'false',
      Min: {
          value: '1',
          selfClosing: 'true',
      },
      Max: {
          value: '10',
          selfClosing: 'true',
      },
      Description: 'How many forward speeds a transmission contains.',
  },
  fInitialDriveForce: {
      Label: 'Drive force',
      Group: 'Engine',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '18',
          selfClosing: 'true',
      },
      Description:
          "This multiplier modifies the game's calculation of drive force (from the output of the transmission).",
  },
  fDriveInertia: {
      Label: 'Drive inertia',
      Group: 'Engine',
      Editable: 'true',
      Min: {
          value: '0.1',
          selfClosing: 'true',
      },
      Max: {
          value: '2.5',
          selfClosing: 'true',
      },
      Description:
          'Describes how fast an engine will rev. For example an engine with a long stroke crank and heavy flywheel will take longer to redline than an engine with a short stroke and light flywheel.',
  },
  fClutchChangeRateScaleUpShift: {
      Label: 'Shift UP speed',
      Group: 'Engine',
      Editable: 'true',
      Min: {
          value: '0.3',
          selfClosing: 'true',
      },
      Max: {
          value: '9',
          selfClosing: 'true',
      },
      Description: 'Clutch speed multiplier on up shifts, bigger number = faster shifts.',
  },
  fClutchChangeRateScaleDownShift: {
      Label: 'Shift DOWN speed',
      Group: 'Engine',
      Editable: 'true',
      Min: {
          value: '0.3',
          selfClosing: 'true',
      },
      Max: {
          value: '9',
          selfClosing: 'true',
      },
      Description: 'Clutch speed multiplier on down shifts, bigger number = faster shifts.',
  },
  fInitialDriveMaxFlatVel: {
      Label: 'Max Speed',
      Group: 'Engine',
      Editable: 'true',
      Min: {
          value: '10',
          selfClosing: 'true',
      },
      Max: {
          value: '328.6',
          selfClosing: 'true',
      },
      Description:
          'Determines the speed at redline in top gear. Setting this value does not guarantee the vehicle will reach this speed. Multiply the number in the file by 0-82 to get the speed in mph or multiply by 1.32 to get kph.',
  },
  fBrakeForce: {
      Label: 'Braking force',
      Editable: 'true',
      Min: {
          value: '0.001',
          selfClosing: 'true',
      },
      Max: {
          value: '5',
          selfClosing: 'true',
      },
      Description: "Multiplies the game's calculation of deceleration. Bigger number = harder braking.",
  },
  fBrakeBiasFront: {
      Label: 'Brake front bias',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '0.8',
          selfClosing: 'true',
      },
      Description: 'This controls the distribution of braking force between the front and rear axles.',
  },
  fHandBrakeForce: {
      Label: 'Hand Brake force',
      Editable: 'true',
      Min: {
          value: '0.01',
          selfClosing: 'true',
      },
      Max: {
          value: '6',
          selfClosing: 'true',
      },
      Description: 'Braking power for handbrake. Bigger number = harder braking.',
  },
  fSteeringLock: {
      Label: 'Steering lock',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '20',
          selfClosing: 'true',
      },
      Max: {
          value: '90',
          selfClosing: 'true',
      },
      Description:
          "This value is a multiplier of the game's calculation of the angle a steer wheel will turn while at full turn. Steering lock is directly related to over or understeer / turning radius.",
  },
  fTractionCurveMax: {
      Label: 'Traction curve max',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '3.7',
          selfClosing: 'true',
      },
      Description: 'Cornering grip of the vehicle as a multiplier of the tire surface friction.',
  },
  fTractionCurveMin: {
      Label: 'Traction curve min',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '3.5',
          selfClosing: 'true',
      },
      Description: 'Accelerating/braking grip of the vehicle as a multiplier of the tire surface friction.',
  },
  fTractionCurveLateral: {
      Label: 'Traction curve lateral',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '1',
          selfClosing: 'true',
      },
      Max: {
          value: '120',
          selfClosing: 'true',
      },
      Description: 'Shape of lateral traction curve (peak traction position in degrees).',
  },
  fTractionSpringDeltaMax: {
      Label: 'Traction spring delta max',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0.02',
          selfClosing: 'true',
      },
      Max: {
          value: '0.5',
          selfClosing: 'true',
      },
      Description: 'This value denotes at what distance above the ground the car will lose traction.',
  },
  fLowSpeedTractionLossMult: {
      Label: 'Traction loss multiplier',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '2.2',
          selfClosing: 'true',
      },
      Description:
          "How much traction is reduced at low speed, 0.0 means normal traction. It affects mainly car burnout (spinning wheels when car doesn't move) when pressing gas. Decreasing value will cause less burnout, less sliding at start. However, the higher value, the more burnout car gets. Optimal is 1.0.",
  },
  fCamberStiffnesss: {
      Label: 'Camber stiffness',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '1.12',
          selfClosing: 'true',
      },
      Description:
          "This value modify the grip of the car when you're drifting and you release the gas. In general, it makes your car slide more on sideways movement. More than 0 make the car sliding on the same angle you're drifting and less than 0 make your car oversteer (not recommend to use more than 0.1 / -0.1 if you don't know what you're doing).",
  },
  fTractionBiasFront: {
      Label: 'Traction front bias',
      Group: 'Traction',
      Editable: 'true',
      Min: {
          value: '0.325',
          selfClosing: 'true',
      },
      Max: {
          value: '0.95',
          selfClosing: 'true',
      },
      Description: 'Determines the distribution of traction from front to rear.',
  },
  fTractionLossMult: {
      Label: 'Traction loss multiplier',
      Group: 'Traction',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '1.4',
          selfClosing: 'true',
      },
      Description:
          'How much is traction affected by material grip differences from 1.0. Basically it affects how much grip is changed when driving on asphalt and mud (the higher, the more grip you loose, making car less responsive and prone to sliding).',
  },
  fSuspensionForce: {
      Label: 'Suspension stiffness',
      Group: 'Suspension',
      Min: {
          value: '0',
      },
      Max: {
          value: '9',
      },
      Description:
          '1 / (Force * NumWheels) = Lower limit for zero force at full extension. Affects how strong suspension is. Can help if car is easily flipped over when turning.',
  },
  fSuspensionCompDamp: {
      Label: 'Suspenssion damper comp stiffness',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '8',
          selfClosing: 'true',
      },
      Description: 'Damping during strut compression. Bigger = stiffer.',
  },
  fSuspensionReboundDamp: {
      Label: 'Suspension rebound damp stiffness',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '10.8',
          selfClosing: 'true',
      },
      Description: 'Damping during strut rebound. Bigger = stiffer.',
  },
  fSuspensionUpperLimit: {
      Label: 'Suspension upper limit',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '0.8',
          selfClosing: 'true',
      },
      Description: 'Visual limit... how far can wheels move up / down from original position.',
  },
  fSuspensionLowerLimit: {
      Label: 'Suspension lower limit',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '-0.36',
          selfClosing: 'true',
      },
      Max: {
          value: '0.1',
          selfClosing: 'true',
      },
      Description: 'Visual limit... how far can wheels move up / down from original position.',
  },
  fSuspensionRaise: {
      Label: 'Suspension height',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '-0.085',
          selfClosing: 'true',
      },
      Max: {
          value: '0.35',
          selfClosing: 'true',
      },
      Description:
          'The amount that the suspension raises the body off the wheels. Recommend adjusting at second decimal unless vehicle has room to move. ie -0.02 is plenty of drop on an already low car. Too much will show the wheels clipping through or if positive, no suspension joining the body to wheels.',
  },
  fSuspensionBiasFront: {
      Label: 'Suspension front bias',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '0.85',
          selfClosing: 'true',
      },
      Description:
          'Force damping scale front/back. If more wheels at back (e.g. trucks) need front suspension to be stronger. This value determines which suspension is stronger, front or rear. If value is above 0.50 then front is stiffer, when below, rear.',
  },
  fAntiRollBarForce: {
      Label: 'Antiroll bar stiffness',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '3',
          selfClosing: 'true',
      },
      Description:
          'The spring constant that is transmitted to the opposite wheel when under compression larger numbers are a larger force. Larger Numbers = less body roll.',
  },
  fAntiRollBarBiasFront: {
      Label: 'Front Antiroll bar stiffness',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '1',
          selfClosing: 'true',
      },
      Description: 'The bias between front and rear for the antiroll bar(0 front, 1 rear).',
  },
  fRollCentreHeightFront: {
      Label: 'Roll centre height front',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '1.2',
          selfClosing: 'true',
      },
      Description: 'This value modify the weight transmission during an acceleration between the left and right.',
  },
  fRollCentreHeightRear: {
      Label: 'Roll centre height rear',
      Group: 'Suspension',
      Editable: 'true',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '1.2',
          selfClosing: 'true',
      },
      Description:
          'This value modify the weight transmission during an acceleration between the front and rear (and can affect the acceleration speed).',
  },
  fCollisionDamageMult: {
      Label: 'Crash damage multiplier',
      Editable: 'false',
      Min: {
          value: '0.005',
          selfClosing: 'true',
      },
      Max: {
          value: '2',
          selfClosing: 'true',
      },
      Description: "Multiplies the game's calculation of damage to the vehicle through collision.",
  },
  fWeaponDamageMult: {
      Label: 'Weapon damage multiplier',
      Editable: 'false',
      Min: {
          value: '0.03',
          selfClosing: 'true',
      },
      Max: {
          value: '4',
          selfClosing: 'true',
      },
      Description: "Multiplies the game's calculation of damage to the vehicle through weapon damage.",
  },
  fDeformationDamageMult: {
      Label: 'Deformation multiplier',
      Editable: 'false',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '5',
          selfClosing: 'true',
      },
      Description: "Multiplies the game's calculation of deformation-causing damage.",
  },
  fEngineDamageMult: {
      Label: 'Engine damage multiplier',
      Editable: 'false',
      Min: {
          value: '0.01',
          selfClosing: 'true',
      },
      Max: {
          value: '2.5',
          selfClosing: 'true',
      },
      Description: "Multiplies the game's calculation of damage to the engine, causing explosion or engine failure.",
  },
  fPetrolTankVolume: {
      Label: 'Fuel tank volume',
      Editable: 'false',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '5000',
          selfClosing: 'true',
      },
      Description: "Amount of petrol that will leak after shooting the vehicle's petrol tank.",
  },
  fOilVolume: {
      Label: 'Oil volume',
      Editable: 'false',
      Min: {
          value: '0',
          selfClosing: 'true',
      },
      Max: {
          value: '10',
          selfClosing: 'true',
      },
      Description: 'Black smoke time before engine dies?',
  },
  fSeatOffsetDistX: {
      Label: 'Seat offset X',
      Editable: 'false',
      Min: {
          value: '-0.2',
          selfClosing: 'true',
      },
      Max: {
          value: '0.3',
          selfClosing: 'true',
      },
      Description: 'The distance from the door to the car seat.',
  },
  fSeatOffsetDistY: {
      Label: 'Seat offset Y',
      Editable: 'false',
      Min: {
          value: '-0.6',
          selfClosing: 'true',
      },
      Max: {
          value: '0.3',
          selfClosing: 'true',
      },
      Description: 'The distance from the door to the car seat.',
  },
  fSeatOffsetDistZ: {
      Label: 'Seat offset Z',
      Editable: 'false',
      Min: {
          value: '-0.4',
          selfClosing: 'true',
      },
      Max: {
          value: '0.5',
          selfClosing: 'true',
      },
      Description: 'The distance from the door to the car seat.',
  },
  nMonetaryValue: {
      Label: 'Vehicle value',
      Editable: 'false',
      Min: {
          value: '10000',
          selfClosing: 'true',
      },
      Max: {
          value: '500000',
          selfClosing: 'true',
      },
      Description: 'Vehicle worth.',
  },
  // strModelFlags: {
  //     Label: 'Model Flags',
  //     Editable: 'false',
  //     Description: 'Model flags. Written in HEX. Rightmost digit is the first one.',
  //     Min:{
  //         value: '0',
  //     },
  //     Max:{
  //         value: '999999',
  //     }
  // },
  // strHandlingFlags: {
  //     Label: 'Handling Flags',
  //     Editable: 'false',
  //     Description: 'Handling flags. Written in HEX. Rightmost digit is the first one.',
  //     Min:{
  //         value: '0',
  //     },
  //     Max:{
  //         value: '999999',
  //     }
  // },
  // strDamageFlags: {
  //     Label: 'Damage Flags',
  //     Editable: 'false',
  //     Description: 'Indicates the doors that are nonbreakable. Written in HEX. Rightmost digit is the first one.',
  //     Min:{
  //         value: '0',
  //     },
  //     Max:{
  //         value: '999999',
  //     }
  // },
  vecInertiaMultiplier: {
      Label: 'Inertial multiplier',
      value: {x: 0.0, y: 0.5, z: 1.0},
      Min:{
        value: '-5.0',
      },
      Max:{
        value: '10.0',
      }
    },
    vecCentreOfMassOffset: {
      Label: 'Centre of mass offset',
      Description: 'Defines center of mass offset. If car easily flips on turns you most likely want to change this an set offset lower.',
      value: {x: 0.0, y: 0.5, z: 1.0},
      Min:{
          value: '-5.0',
      },
      Max:{
          value: '10.0',
      }
  },
  // AIHandling: {
  //     Editable: 'false',
  //     Description:
  //         'Tells the AI which driving profile it should use when driving the vehicle. Use AVERAGE for boats, bikes, aircraft, etc.',
  // },
  // SubHandlingData: {
  //     Editable: 'false',
  //     Description: {
  //         selfClosing: 'true',
  //     },
  // },
  fWeaponDamageScaledToVehHealthMult: {
      Label: 'Weapon damage to veh health multiplier',
      Editable: 'false',
      Min: {
          value: '0.34',
          selfClosing: 'true',
      },
      Max: {
          value: '0.34',
          selfClosing: 'true',
      },
      Description: {
          selfClosing: 'true',
      },
  },
  fPopUpLightRotation: {
      Label: 'Pop up light rotation',
      Editable: 'true',
      Min: {
          value: '17.5',
          selfClosing: 'true',
      },
      Max: {
          value: '45',
          selfClosing: 'true',
      },
      Description: {
          selfClosing: 'true',
      },
  },
  fDownforceModifier: {
      Label: 'Downforce multiplier',
      Group: 'Aero',
      Editable: 'false',
      Min: {
          value: '1.15',
          selfClosing: 'true',
      },
      Max: {
          value: '300',
          selfClosing: 'true',
      },
      Description: {
          selfClosing: 'true',
      },
  },
  fRocketBoostCapacity: {
      Label: 'Rocket Boost capacity',
      Group: 'Other',
      Editable: 'false',
      Min: {
          value: '3',
          selfClosing: 'true',
      },
      Max: {
          value: '20',
          selfClosing: 'true',
      },
      Description: {
          selfClosing: 'true',
      },
  },
  fBoostMaxSpeed: {
      Label: 'Boost max speed',
      Group: 'Other',
      Editable: 'false',
      Min: {
          value: '15',
          selfClosing: 'true',
      },
      Max: {
          value: '87.5',
          selfClosing: 'true',
      },
      Description: {
          selfClosing: 'true',
      },
  },
};