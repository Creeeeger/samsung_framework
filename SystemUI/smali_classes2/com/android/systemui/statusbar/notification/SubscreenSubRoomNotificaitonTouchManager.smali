.class public final Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final effect:Landroid/os/VibrationEffect;

.field public mContext:Landroid/content/Context;

.field public mItemTouchDownX:F

.field public final mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field public mItemViewSwipeEnabled:Z

.field public mLayoutDirection:I

.field public final mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

.field public final mOnItemTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

.field public final mSimpleItemTouchCallBack:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;

.field public mSwipeEscapeVelocity:F

.field public mSwipeThreshold:F

.field public final mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;Landroid/os/Vibrator;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const v0, 0x3e99999a    # 0.3f

    .line 5
    .line 6
    .line 7
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeThreshold:F

    .line 8
    .line 9
    const/high16 v0, 0x40a00000    # 5.0f

    .line 10
    .line 11
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeEscapeVelocity:F

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 18
    .line 19
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    const/16 v2, 0x8

    .line 23
    .line 24
    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;II)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSimpleItemTouchCallBack:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;

    .line 28
    .line 29
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mOnItemTouchListener:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

    .line 35
    .line 36
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mContext:Landroid/content/Context;

    .line 39
    .line 40
    new-instance p1, Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 41
    .line 42
    invoke-direct {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    .line 43
    .line 44
    .line 45
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 46
    .line 47
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mVibrator:Landroid/os/Vibrator;

    .line 48
    .line 49
    const/16 p1, 0x29

    .line 50
    .line 51
    invoke-static {p1}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const/4 p2, -0x1

    .line 56
    sget-object p3, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_TOUCH:Landroid/os/VibrationEffect$SemMagnitudeType;

    .line 57
    .line 58
    invoke-static {p1, p2, p3}, Landroid/os/VibrationEffect;->semCreateWaveform(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->effect:Landroid/os/VibrationEffect;

    .line 63
    .line 64
    return-void
.end method
