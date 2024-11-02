.class public final Lcom/android/systemui/pluginlock/model/NotificationData;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field private mNotiType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_type"
    .end annotation
.end field

.field private mNotificationCardData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_card_info"
    .end annotation
.end field

.field private mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "noti_icon_info"
    .end annotation
.end field

.field private mRecoverType:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "recover_type"
    .end annotation
.end field

.field private mVisibility:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "visibility"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotiType:Ljava/lang/Integer;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mRecoverType:Ljava/lang/Integer;

    .line 12
    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mVisibility:Ljava/lang/Integer;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    check-cast p0, Lcom/android/systemui/pluginlock/model/NotificationData;

    .line 6
    .line 7
    return-object p0
.end method

.method public final getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;-><init>(Lcom/android/systemui/pluginlock/model/NotificationData;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationCardData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;-><init>(Lcom/android/systemui/pluginlock/model/NotificationData;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 11
    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotificationIconOnlyData:Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    .line 13
    .line 14
    return-object p0
.end method

.method public final getNotiType()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotiType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getVisibility()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mVisibility:Ljava/lang/Integer;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, -0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 8
    .line 9
    .line 10
    move-result p0

    .line 11
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method

.method public final setNotiType(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mNotiType:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setVisibility(Ljava/lang/Integer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/pluginlock/model/NotificationData;->mVisibility:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method
