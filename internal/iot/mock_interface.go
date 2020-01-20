// Code generated by mockery v1.0.0. DO NOT EDIT.

package iot

import context "context"
import mock "github.com/stretchr/testify/mock"
import sensors "github.com/kml183/room-environment-monitor/internal/sensors"

// MockInterface is an autogenerated mock type for the Interface type
type MockInterface struct {
	mock.Mock
}

// FetchSensorDataSnapshot provides a mock function with given fields: ctx
func (_m *MockInterface) FetchSensorDataSnapshot(ctx context.Context) (*sensors.SensorData, error) {
	ret := _m.Called(ctx)

	var r0 *sensors.SensorData
	if rf, ok := ret.Get(0).(func(context.Context) *sensors.SensorData); ok {
		r0 = rf(ctx)
	} else {
		if ret.Get(0) != nil {
			r0 = ret.Get(0).(*sensors.SensorData)
		}
	}

	var r1 error
	if rf, ok := ret.Get(1).(func(context.Context) error); ok {
		r1 = rf(ctx)
	} else {
		r1 = ret.Error(1)
	}

	return r0, r1
}

// PublishDeviceStatus provides a mock function with given fields: _a0
func (_m *MockInterface) PublishDeviceStatus(_a0 context.Context) error {
	ret := _m.Called(_a0)

	var r0 error
	if rf, ok := ret.Get(0).(func(context.Context) error); ok {
		r0 = rf(_a0)
	} else {
		r0 = ret.Error(0)
	}

	return r0
}

// PublishSensorDataSnapshot provides a mock function with given fields: _a0
func (_m *MockInterface) PublishSensorDataSnapshot(_a0 context.Context) error {
	ret := _m.Called(_a0)

	var r0 error
	if rf, ok := ret.Get(0).(func(context.Context) error); ok {
		r0 = rf(_a0)
	} else {
		r0 = ret.Error(0)
	}

	return r0
}

// SubscribeToIOTCoreConfig provides a mock function with given fields: _a0
func (_m *MockInterface) SubscribeToIOTCoreConfig(_a0 context.Context) error {
	ret := _m.Called(_a0)

	var r0 error
	if rf, ok := ret.Get(0).(func(context.Context) error); ok {
		r0 = rf(_a0)
	} else {
		r0 = ret.Error(0)
	}

	return r0
}
