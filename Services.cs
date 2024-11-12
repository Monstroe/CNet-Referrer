namespace CNet_Referrer;

public enum ServiceSendType
{
    ID = 0,
    RoomCode = 1,
    RoomMembers = 2,
    MemberJoined = 3,
    MemberLeft = 4,
    RoomStart = 5,
    RoomClosed = 6,
    Invalid = 7
}

public enum ServiceReceiveType
{
    CreateRoom = 0,
    JoinRoom = 1,
    LeaveRoom = 2,
    StartRoom = 3,
    CloseRoom = 4
}