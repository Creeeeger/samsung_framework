.class public final Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

.field public final context:Landroid/content/Context;

.field public final dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final keyGuardManager:Landroid/app/KeyguardManager;

.field public final lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field public final mediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public final nearbyMediaDevicesManagerOptional:Ljava/util/Optional;

.field public final notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

.field public final powerExemptionManager:Landroid/os/PowerExemptionManager;

.field public final starter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/internal/logging/UiEventLogger;Lcom/android/systemui/animation/DialogLaunchAnimator;Ljava/util/Optional;Landroid/media/AudioManager;Landroid/os/PowerExemptionManager;Landroid/app/KeyguardManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/media/session/MediaSessionManager;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothManager;",
            "Lcom/android/systemui/plugins/ActivityStarter;",
            "Lcom/android/systemui/broadcast/BroadcastSender;",
            "Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;",
            "Lcom/android/internal/logging/UiEventLogger;",
            "Lcom/android/systemui/animation/DialogLaunchAnimator;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/media/nearby/NearbyMediaDevicesManager;",
            ">;",
            "Landroid/media/AudioManager;",
            "Landroid/os/PowerExemptionManager;",
            "Landroid/app/KeyguardManager;",
            "Lcom/android/systemui/flags/FeatureFlags;",
            "Lcom/android/systemui/settings/UserTracker;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->starter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 19
    .line 20
    iput-object p9, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->nearbyMediaDevicesManagerOptional:Ljava/util/Optional;

    .line 21
    .line 22
    iput-object p10, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->audioManager:Landroid/media/AudioManager;

    .line 23
    .line 24
    iput-object p11, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->powerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 25
    .line 26
    iput-object p12, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->keyGuardManager:Landroid/app/KeyguardManager;

    .line 27
    .line 28
    iput-object p13, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 29
    .line 30
    iput-object p14, p0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/String;Landroid/view/View;)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    sget-object v1, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {v1}, Lcom/android/systemui/media/dialog/MediaOutputBaseDialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    new-instance v18, Lcom/android/systemui/media/dialog/MediaOutputController;

    .line 12
    .line 13
    iget-object v5, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v7, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 16
    .line 17
    iget-object v8, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->lbm:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 18
    .line 19
    iget-object v9, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->starter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 20
    .line 21
    iget-object v10, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->notifCollection:Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;

    .line 22
    .line 23
    iget-object v11, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 24
    .line 25
    iget-object v12, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->nearbyMediaDevicesManagerOptional:Ljava/util/Optional;

    .line 26
    .line 27
    iget-object v13, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->audioManager:Landroid/media/AudioManager;

    .line 28
    .line 29
    iget-object v14, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->powerExemptionManager:Landroid/os/PowerExemptionManager;

    .line 30
    .line 31
    iget-object v15, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->keyGuardManager:Landroid/app/KeyguardManager;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 34
    .line 35
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 36
    .line 37
    move-object/from16 v4, v18

    .line 38
    .line 39
    move-object/from16 v6, p1

    .line 40
    .line 41
    move-object/from16 v16, v1

    .line 42
    .line 43
    move-object/from16 v17, v2

    .line 44
    .line 45
    invoke-direct/range {v4 .. v17}, Lcom/android/systemui/media/dialog/MediaOutputController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/collection/notifcollection/CommonNotifCollection;Lcom/android/systemui/animation/DialogLaunchAnimator;Ljava/util/Optional;Landroid/media/AudioManager;Landroid/os/PowerExemptionManager;Landroid/app/KeyguardManager;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/settings/UserTracker;)V

    .line 46
    .line 47
    .line 48
    new-instance v20, Lcom/android/systemui/media/dialog/MediaOutputDialog;

    .line 49
    .line 50
    iget-object v2, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->context:Landroid/content/Context;

    .line 51
    .line 52
    iget-object v4, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->broadcastSender:Lcom/android/systemui/broadcast/BroadcastSender;

    .line 53
    .line 54
    iget-object v6, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 55
    .line 56
    iget-object v7, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 57
    .line 58
    move-object/from16 v1, v20

    .line 59
    .line 60
    move-object/from16 v5, v18

    .line 61
    .line 62
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/media/dialog/MediaOutputDialog;-><init>(Landroid/content/Context;ZLcom/android/systemui/broadcast/BroadcastSender;Lcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/systemui/animation/DialogLaunchAnimator;Lcom/android/internal/logging/UiEventLogger;)V

    .line 63
    .line 64
    .line 65
    sput-object v20, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->mediaOutputDialog:Lcom/android/systemui/media/dialog/MediaOutputDialog;

    .line 66
    .line 67
    if-eqz p2, :cond_1

    .line 68
    .line 69
    iget-object v0, v0, Lcom/android/systemui/media/dialog/MediaOutputDialogFactory;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 70
    .line 71
    new-instance v1, Lcom/android/systemui/animation/DialogCuj;

    .line 72
    .line 73
    const/16 v2, 0x3a

    .line 74
    .line 75
    const-string/jumbo v3, "media_output"

    .line 76
    .line 77
    .line 78
    invoke-direct {v1, v2, v3}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const/16 v23, 0x0

    .line 82
    .line 83
    const/16 v24, 0x8

    .line 84
    .line 85
    move-object/from16 v19, v0

    .line 86
    .line 87
    move-object/from16 v21, p2

    .line 88
    .line 89
    move-object/from16 v22, v1

    .line 90
    .line 91
    invoke-static/range {v19 .. v24}, Lcom/android/systemui/animation/DialogLaunchAnimator;->showFromView$default(Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/app/Dialog;Landroid/view/View;Lcom/android/systemui/animation/DialogCuj;ZI)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_1
    invoke-virtual/range {v20 .. v20}, Landroid/app/AlertDialog;->show()V

    .line 96
    .line 97
    .line 98
    :goto_0
    return-void
.end method
