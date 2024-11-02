.class public Lcom/sec/ims/volte2/data/QuantumSecurityInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_ENCRYPT_STATUS;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_PEER_PROFILE_STATUS;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_CALL_DIRECTION;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_CRYPTO_MODE;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_KEY_STATUS;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_LOGIN_STATUS;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_AUTH_STATUS;,
        Lcom/sec/ims/volte2/data/QuantumSecurityInfo$QUANTUM_VOLTE_STATUS;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/volte2/data/QuantumSecurityInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static QUANTUM_ENCRYPT_KEY_LENGTH:I = 0x10


# instance fields
.field private mCallDirection:I

.field private mCryptoMode:I

.field private mEncryptStatus:I

.field private mLocalPhoneNumber:Ljava/lang/String;

.field private mPeerProfileStatus:I

.field private mQtSessionId:Ljava/lang/String;

.field private mRemoteTelNum:Ljava/lang/String;

.field private mSessionKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sec/ims/volte2/data/QuantumSecurityInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    const/4 v1, -0x1

    .line 3
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 4
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 5
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 7
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 8
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 9
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    const/4 v1, -0x1

    .line 12
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 13
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 14
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 22
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    .line 23
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized clearAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    .line 4
    .line 5
    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 7
    .line 8
    iput v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 9
    .line 10
    iput v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    .line 11
    .line 12
    const-string v0, ""

    .line 13
    .line 14
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, ""

    .line 17
    .line 18
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, ""

    .line 25
    .line 26
    iput-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    .line 28
    monitor-exit p0

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception v0

    .line 31
    monitor-exit p0

    .line 32
    throw v0
.end method

.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getCallDirection()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 2
    .line 3
    return p0
.end method

.method public getCryptoMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    .line 2
    .line 3
    return p0
.end method

.method public declared-synchronized getEncryptStatus()I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public getLocalPhoneNumber()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getPeerProfileStatus()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 2
    .line 3
    return p0
.end method

.method public declared-synchronized getQtSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-object v0

    .line 6
    :catchall_0
    move-exception v0

    .line 7
    monitor-exit p0

    .line 8
    throw v0
.end method

.method public getRemoteTelNum()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public getSessionKey()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public setCallDirection(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 2
    .line 3
    return-void
.end method

.method public setCryptoMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setEncryptStatus(I)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public setLocalPhoneNumber(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setPeerProfileStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setQtSessionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :catchall_0
    move-exception p1

    .line 7
    monitor-exit p0

    .line 8
    throw p1
.end method

.method public setRemoteTelNum(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public setSessionKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "QuantumSecurityInfo [mEncryptStatus="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", mPeerProfileStatus="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mCallDirection="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mCryptoMode="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", mQtSessionId="

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-object v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v1, ", mSessionKey="

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v1, ", mLocalPhoneNumber="

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    iget-object v1, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    .line 77
    .line 78
    invoke-static {v1}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v1, ", mRemoteTelNum="

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 91
    .line 92
    invoke-static {p0}, Lcom/sec/ims/util/IMSLog;->checker(Ljava/lang/Object;)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string p0, "]"

    .line 100
    .line 101
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object p0

    .line 108
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mEncryptStatus:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mPeerProfileStatus:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCallDirection:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mCryptoMode:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mQtSessionId:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mRemoteTelNum:Ljava/lang/String;

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    iget-object p2, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mSessionKey:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object p0, p0, Lcom/sec/ims/volte2/data/QuantumSecurityInfo;->mLocalPhoneNumber:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    return-void
.end method
