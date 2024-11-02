.class public Lcom/sec/ims/cmc/CmcCallInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    }
.end annotation


# static fields
.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_INCALL:I = 0x3

.field public static final CALL_STATE_INCOMING:I = 0x1

.field public static final CALL_STATE_OUTGOING:I = 0x2

.field public static final CALL_STATE_PDCALL:I = 0x4

.field public static final CMC_TYPE_NONE:I = 0x0

.field public static final CMC_TYPE_PRIMARY:I = 0x1

.field public static final CMC_TYPE_SECONDARY:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sec/ims/cmc/CmcCallInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_TAG:Ljava/lang/String; = "CmcCallInfo"


# instance fields
.field private mCmcCallState:I

.field private mCmcType:I

.field private mLineSlotId:I

.field private mPdDeviceId:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sec/ims/cmc/CmcCallInfo$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallInfo$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/sec/ims/cmc/CmcCallInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 4
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 5
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    const-string v0, ""

    .line 6
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/ims/cmc/CmcCallInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallInfo$Builder;)V
    .locals 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 22
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 23
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    const-string v0, ""

    .line 24
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 25
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mLineSlotId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 26
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcType:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 27
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcCallState:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 28
    iget-object p1, p1, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mPdDeviceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sec/ims/cmc/CmcCallInfo;)V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 13
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 14
    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 16
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 17
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 18
    iget v0, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    iput v0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 19
    iget-object p1, p1, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    return-void
.end method

.method public static getBuilder()Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 1

    .line 1
    new-instance v0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/sec/ims/cmc/CmcCallInfo$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getCmcCallState()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 2
    .line 3
    return p0
.end method

.method public getCmcType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 2
    .line 3
    return p0
.end method

.method public getLineSlotId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 2
    .line 3
    return p0
.end method

.method public getPdDeviceId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CmcCallInfo("

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ") [mCmcType="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", mCmcCallState="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", mPdDeviceId="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 39
    .line 40
    const-string v1, "]"

    .line 41
    .line 42
    invoke-static {v0, p0, v1}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mLineSlotId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcType:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mCmcCallState:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-object p0, p0, Lcom/sec/ims/cmc/CmcCallInfo;->mPdDeviceId:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
