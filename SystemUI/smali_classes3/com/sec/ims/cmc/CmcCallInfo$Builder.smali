.class public Lcom/sec/ims/cmc/CmcCallInfo$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/cmc/CmcCallInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field protected mCmcCallState:I

.field protected mCmcType:I

.field protected mLineSlotId:I

.field protected mPdDeviceId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public build()Lcom/sec/ims/cmc/CmcCallInfo;
    .locals 1

    .line 1
    new-instance v0, Lcom/sec/ims/cmc/CmcCallInfo;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/sec/ims/cmc/CmcCallInfo;-><init>(Lcom/sec/ims/cmc/CmcCallInfo$Builder;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public setCallState(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcCallState:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setCmcType(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mCmcType:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setLineSlotId(I)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    .line 1
    iput p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mLineSlotId:I

    .line 2
    .line 3
    return-object p0
.end method

.method public setPdDeviceId(Ljava/lang/String;)Lcom/sec/ims/cmc/CmcCallInfo$Builder;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/ims/cmc/CmcCallInfo$Builder;->mPdDeviceId:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
