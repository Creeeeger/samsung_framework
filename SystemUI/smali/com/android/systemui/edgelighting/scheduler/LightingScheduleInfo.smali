.class public final Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mDuration:I

.field public final mIcon:Landroid/graphics/drawable/Drawable;

.field public mIsDirty:Z

.field public final mKey:Ljava/lang/String;

.field public final mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

.field public mLightingLogicPolicy:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$LightingLogicPolicy;

.field public mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

.field public final mPackageName:Ljava/lang/String;

.field public mReason:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sput-boolean v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/edge/SemEdgeLightingInfo;Landroid/graphics/drawable/Drawable;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 p6, 0xfa0

    .line 5
    .line 6
    iput p6, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    .line 7
    .line 8
    const/4 p6, 0x1

    .line 9
    iput-boolean p6, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIsDirty:Z

    .line 10
    .line 11
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mPackageName:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p2, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mKey:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p3, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 16
    .line 17
    iput p5, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mReason:I

    .line 18
    .line 19
    iput-object p4, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 20
    .line 21
    new-instance p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    .line 22
    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 24
    .line 25
    .line 26
    new-instance p2, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodyText;

    .line 27
    .line 28
    invoke-direct {p2, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodyText;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 29
    .line 30
    .line 31
    new-instance p3, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodySubText;

    .line 32
    .line 33
    invoke-direct {p3, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemBodySubText;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 34
    .line 35
    .line 36
    new-instance p4, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTicker;

    .line 37
    .line 38
    invoke-direct {p4, p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTicker;-><init>(Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    .line 42
    .line 43
    iget-object p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 44
    .line 45
    if-nez p0, :cond_0

    .line 46
    .line 47
    new-instance p0, Ljava/util/ArrayList;

    .line 48
    .line 49
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .line 51
    .line 52
    iput-object p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 53
    .line 54
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mWith:Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    iput-object p4, p1, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 60
    .line 61
    iput-object p3, p4, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->mNext:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;

    .line 62
    .line 63
    return-void
.end method


# virtual methods
.method public final getActionList()Ljava/util/ArrayList;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v0, "noti_actions"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    return-object p0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    return-object p0
.end method

.method public final getContentIntent()Landroid/app/PendingIntent;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v0, 0x0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    const-string v1, "content_intent"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    if-eqz p0, :cond_0

    .line 17
    .line 18
    instance-of v1, p0, Landroid/app/PendingIntent;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    move-object v0, p0

    .line 23
    check-cast v0, Landroid/app/PendingIntent;

    .line 24
    .line 25
    :cond_0
    return-object v0
.end method

.method public final getDuration()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/systemui/edgelighting/utils/Utils;->isLargeCoverFlipFolded()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    .line 8
    .line 9
    add-int/lit16 p0, p0, -0x3e8

    .line 10
    .line 11
    return p0

    .line 12
    :cond_0
    iget p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    .line 13
    .line 14
    return p0
.end method

.method public final getNotiText()[Ljava/lang/String;
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->DEBUG:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "LightingScheduleInfo"

    .line 12
    .line 13
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mNotiTextPolicyChain:Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$ChainItemTitle;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo$NotiTextChain;->getChainText()[Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    return-object p0
.end method

.method public final getNotificationID()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v0, "noti_id"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final getNotificationKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string/jumbo p0, "noti_key"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mKey:Ljava/lang/String;

    .line 20
    .line 21
    return-object p0
.end method

.method public final getNotificationTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v0, "noti_tag"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return-object p0
.end method

.method public final getUserId()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const-string/jumbo v0, "user_id"

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result p0

    .line 16
    return p0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    return p0
.end method

.method public final getVisibility()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mLightingInfo:Lcom/samsung/android/edge/SemEdgeLightingInfo;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/edge/SemEdgeLightingInfo;->getExtra()Landroid/os/Bundle;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/16 v0, -0x3e8

    .line 8
    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    const-string/jumbo v1, "noti_visiblity"

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 15
    .line 16
    .line 17
    move-result p0

    .line 18
    return p0

    .line 19
    :cond_0
    return v0
.end method

.method public final setDuration(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "setDuration : duration="

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "LightingScheduleInfo"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    iput p1, p0, Lcom/android/systemui/edgelighting/scheduler/LightingScheduleInfo;->mDuration:I

    .line 22
    .line 23
    return-void
.end method
