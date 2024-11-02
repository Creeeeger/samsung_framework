.class public final Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public mHiSyncId:J

.field public mMode:I

.field public mSide:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mSide:I

    .line 6
    .line 7
    iput v0, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mMode:I

    .line 8
    .line 9
    const-wide/16 v0, 0x0

    .line 10
    .line 11
    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mHiSyncId:J

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final build()Lcom/android/settingslib/bluetooth/HearingAidInfo;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/settingslib/bluetooth/HearingAidInfo;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mSide:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mMode:I

    .line 6
    .line 7
    iget-wide v3, p0, Lcom/android/settingslib/bluetooth/HearingAidInfo$Builder;->mHiSyncId:J

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v0, v6

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/bluetooth/HearingAidInfo;-><init>(IIJI)V

    .line 12
    .line 13
    .line 14
    return-object v6
.end method
