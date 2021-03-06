//
//  Endpoints.swift
//  Endpoints used by PebbleProtocol as well as UUIDs for different characteristics.
//
//  Created by Carson Katri on 10/4/17.
//  Copyright © 2017 Carson Katri. All rights reserved.
//

import Foundation

enum Endpoint: UInt16 {
    case ENDPOINT_TIME = 11
    case ENDPOINT_FIRMWAREVERSION = 16
    case ENDPOINT_PHONEVERSION = 17
    case ENDPOINT_SYSTEMMESSAGE = 18
    case ENDPOINT_MUSICCONTROL = 32
    case ENDPOINT_PHONECONTROL = 33
    case ENDPOINT_APPLICATIONMESSAGE = 48
    case ENDPOINT_LAUNCHER = 49
    case ENDPOINT_APPRUNSTATE = 52 // FW >=3.x
    case ENDPOINT_LOGS = 2000
    case ENDPOINT_PING = 2001
    case ENDPOINT_LOGDUMP = 2002
    case ENDPOINT_RESET = 2003
    case ENDPOINT_APP = 2004
    case ENDPOINT_APPLOGS = 2006
    case ENDPOINT_NOTIFICATION = 3000 // FW 1.x-2-x
    case ENDPOINT_EXTENSIBLENOTIFS = 3010 // FW 2.x
    case ENDPOINT_RESOURCE = 4000
    case ENDPOINT_SYSREG = 5000
    case ENDPOINT_FCTREG = 5001
    case ENDPOINT_APPMANAGER = 6000
    case ENDPOINT_APPFETCH = 6001 // FW >=3.x
    case ENDPOINT_DATALOG = 6778
    case ENDPOINT_RUNKEEPER = 7000
    case ENDPOINT_SCREENSHOT = 8000
    case ENDPOINT_AUDIOSTREAM = 10000
    case ENDPOINT_VOICECONTROL = 11000
    case ENDPOINT_NOTIFICATIONACTION = 11440 // FW >=3.x, TODO: find a better name
    case ENDPOINT_APPREORDER = 0xabcd // FW >=3.x
    case ENDPOINT_BLOBDB = 0xb1db  // FW >=3.x
    case ENDPOINT_PUTIntS = 0xbeef
}

enum AppRunState: Int {
    case APPRUNSTATE_START = 1
    case APPRUNSTATE_STOP = 2
}

enum BlobData: Int {
    case BLOBDB_INSERT = 1
    case BLOBDB_DEcaseE = 4
    case BLOBDB_CLEAR = 5
}

enum BlobOptions: Int {
    case BLOBDB_PIN = 1
    case BLOBDB_APP = 2
    case BLOBDB_REMINDER = 3
    case BLOBDB_NOTIFICATION = 4
    case BLOBDB_WEATHER = 5
    case BLOBDB_CANNED_MESSAGES = 6
    case BLOBDB_PREFERENCES = 7
    case BLOBDB_APPSETTINGS = 9
    case BLOBDB_APPGLANCE = 11
}

enum BlobResponse: Int {
    case BLOBDB_SUCCESS = 1
    case BLOBDB_GENERALFAILURE = 2
    case BLOBDB_INVALIDOPERATION = 3
    case BLOBDB_INVALIDDATABASEID = 4
    case BLOBDB_INVALIDDATA = 5
    case BLOBDB_KEYDOESNOTEXIST = 6
    case BLOBDB_DATABASEFULL = 7
    case BLOBDB_DATASTALE = 8
}

enum Alert: Int {
    case NOTIFICATION_EMAIL = 0
    case NOTIFICATION_SMS = 1
    case NOTIFICATION_TWITTER = 2
    case NOTIFICATION_FACEBOOK = 3
}

enum Call: Int {
    case PHONECONTROL_ANSWER = 1
    case PHONECONTROL_HANGUP = 2
    case PHONECONTROL_GETSTATE = 3
    case PHONECONTROL_INCOMINGCALL = 4
    case PHONECONTROL_OUTGOINGCALL = 5
    case PHONECONTROL_MISSEDCALL = 6
    case PHONECONTROL_RING = 7
    case PHONECONTROL_START = 8
    case PHONECONTROL_END = 9
}

enum Music: Int {
    case MUSICCONTROL_SETMUSICINFO = 0x10
    case MUSICCONTROL_SETPLAYSTATE = 0x11
    
    case MUSICCONTROL_PLAYPAUSE = 1
    case MUSICCONTROL_PAUSE = 2
    case MUSICCONTROL_PLAY = 3
    case MUSICCONTROL_NEXT = 4
    case MUSICCONTROL_PREVIOUS = 5
    case MUSICCONTROL_VOLUMEUP = 6
    case MUSICCONTROL_VOLUMEDOWN = 7
    case MUSICCONTROL_GETNOWPLAYING = 8
}

enum MusicState: Int {
    case MUSICCONTROL_STATE_PAUSED = 0x00
    case MUSICCONTROL_STATE_PLAYING = 0x01
    case MUSICCONTROL_STATE_REWINDING = 0x02
    case MUSICCONTROL_STATE_FASTWORWARDING = 0x03
    case MUSICCONTROL_STATE_UNKNOWN = 0x04
}

enum AlertAction: Int {
    case NOTIFICATIONACTION_ACK = 0
    case NOTIFICATIONACTION_NACK = 1
    case NOTIFICATIONACTION_INVOKE = 0x02
    case NOTIFICATIONACTION_RESPONSE = 0x11
}

enum Time: Int {
    case TIME_GETTIME = 0
    case TIME_SETTIME = 2
    case TIME_SETTIME_UTC = 3
}

enum FirmwareVersion: Int {
    case FIRMWAREVERSION_GETVERSION = 0
}

enum AppManager: Int {
    case APPMANAGER_GETAPPBANKSTATUS = 1
    case APPMANAGER_REMOVEAPP = 2
    case APPMANAGER_REFRESHAPP = 3
    case APPMANAGER_GETUUIDS = 5
}
enum AppResponse: Int {
    case APPMANAGER_RES_SUCCESS = 1
}

enum AppMessage: Int {
    case APPLICATIONMESSAGE_PUSH = 1
    case APPLICATIONMESSAGE_REQUEST = 2
    case APPLICATIONMESSAGE_ACK = 0xff
    case APPLICATIONMESSAGE_NACK = 0x7f
}

enum DataLog: UInt8 {
    case DATALOG_OPENSESSION = 0x01
    case DATALOG_SENDDATA = 0x02
    case DATALOG_CLOSE = 0x03
    case DATALOG_TIMEOUT = 0x07
    case DATALOG_REPORTSESSIONS = 0x84
    case DATALOG_ACK = 0x85
    case DATALOG_NACK = 0x86
}

enum Ping: Int {
    case PING_PING = 0
    case PING_PONG = 1
}

enum Put: Int {
    case PUTIntS_INIT = 1
    case PUTIntS_SEND = 2
    case PUTIntS_COMMIT = 3
    case PUTIntS_ABORT = 4
    case PUTIntS_COMPcaseE = 5
}

enum PutType: Int {
    case PUTIntS_TYPE_FIRMWARE = 1
    case PUTIntS_TYPE_RECOVERY = 2
    case PUTIntS_TYPE_SYSRESOURCES = 3
    case PUTIntS_TYPE_RESOURCES = 4
    case PUTIntS_TYPE_BINARY = 5
    case PUTIntS_TYPE_FILE = 6
    case PUTIntS_TYPE_WORKER = 7
}

enum Reboot: Int {
    case RESET_REBOOT = 0
}

enum Screenshot: Int {
    case SCREENSHOT_TAKE = 0
}

enum SystemMessage: Int {
    case SYSTEMMESSAGE_NEWFIRMWAREAVAILABLE = 0
    case SYSTEMMESSAGE_FIRMWARESTART = 1
    case SYSTEMMESSAGE_FIRMWARECOMPcaseE = 2
    case SYSTEMMESSAGE_FIRMWAREFAIL = 3
    case SYSTEMMESSAGE_FIRMWARE_UPTODATE = 4
    case SYSTEMMESSAGE_FIRMWARE_OUTOFDATE = 5
    case SYSTEMMESSAGE_STOPRECONNECTING = 6
    case SYSTEMMESSAGE_STARTRECONNECTING = 7
}

struct AppVersionStruct {
    var PHONEVERSION_REQUEST = 0
    var PHONEVERSION_APPVERSION_MAGIC = 2 // increase this if pebble complains
    var PHONEVERSION_APPVERSION_MAJOR = 2
    var PHONEVERSION_APPVERSION_MINOR = 3
    var PHONEVERSION_APPVERSION_PATCH = 0
}
var AppVersion = AppVersionStruct()

enum PhoneSession: Int {
    case PHONEVERSION_SESSION_CAPS_GAMMARAY = 0x80000000
}

enum PhoneRemote: Int {
    case PHONEVERSION_REMOTE_CAPS_TELEPHONY = 0x00000010
    case PHONEVERSION_REMOTE_CAPS_SMS = 0x00000020
    case PHONEVERSION_REMOTE_CAPS_GPS = 0x00000040
    case PHONEVERSION_REMOTE_CAPS_BTLE = 0x00000080
    case PHONEVERSION_REMOTE_CAPS_REARCAMERA = 0x00000100
    case PHONEVERSION_REMOTE_CAPS_ACCEL = 0x00000200
    case PHONEVERSION_REMOTE_CAPS_GYRO = 0x00000400
    case PHONEVERSION_REMOTE_CAPS_COMPASS = 0x00000800
}

enum PhoneOS: Int {
    case PHONEVERSION_REMOTE_OS_UNKNOWN = 0
    case PHONEVERSION_REMOTE_OS_IOS = 1
    case PHONEVERSION_REMOTE_OS_ANDROID = 2
    case PHONEVERSION_REMOTE_OS_OSX = 3
    case PHONEVERSION_REMOTE_OS_LINUX = 4
    case PHONEVERSION_REMOTE_OS_WINDOWS = 5
}

enum Type: Int {
    case TYPE_IntARRAY = 0
    case TYPE_CSTRING = 1
    case TYPE_UINT = 2
    case TYPE_INT = 3
}

enum Length: Int {
    case LENGTH_PREFIX = 4
    case LENGTH_UUID = 16
}

enum DeviceUUID: Int64 {
    case GB_UUID_MASK = 0x4767744272646700
}

enum WatchCharacteristic: String {
    case service = "0000fed9-0000-1000-8000-00805f9b34fb"
    case connectivity = "00000001-328E-0FBB-C642-1AA6699BDADA"
    case pairingTrigger = "00000002-328E-0FBB-C642-1AA6699BDADA"
    case mtu = "00000003-328e-0fbb-c642-1aa6699bdada"
    case connectionParams = "00000005-328E-0FBB-C642-1AA6699BDADA"
    case configDescriptor = "00002902-0000-1000-8000-00805f9b34fb"
    
    case read = "10000002-328E-0FBB-C642-1AA6699BDADA"
    case write = "10000001-328E-0FBB-C642-1AA6699BDADA"
}

enum WatchUUID: String {
    case pebbleHealth = "36d8c6ed-4c83-4fa1-a9e2-8f12dc941f8c"
    case workout = "fef82c82-7176-4e22-88de-35a3fc18d43f"
    
    case weather = "61b22bc8-1e29-460d-a236-3fe409a439ff"
    case location = "2c7e6a86-51e5-4ddd-b606-db43d1e4ad28"
    
    case notifications = "b2cae818-10f8-46df-ad2b-98ad2254a3c1"
}
