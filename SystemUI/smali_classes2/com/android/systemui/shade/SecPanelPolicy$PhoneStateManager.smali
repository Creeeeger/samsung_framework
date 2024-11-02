.class public final Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final mMainHandler:Landroid/os/Handler;

.field public final mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public mPhoneState:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;->mPhoneState:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 9
    .line 10
    iput-object p3, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;->mMainHandler:Landroid/os/Handler;

    .line 11
    .line 12
    new-instance p2, Landroid/content/IntentFilter;

    .line 13
    .line 14
    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    .line 15
    .line 16
    .line 17
    const-string p3, "android.intent.action.PHONE_STATE"

    .line 18
    .line 19
    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, p2, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/IntentFilter;Landroid/content/BroadcastReceiver;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "android.intent.action.PHONE_STATE"

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string/jumbo p1, "state"

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;->mPhoneState:Ljava/lang/String;

    .line 21
    .line 22
    iget-object p1, p0, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager;->mMainHandler:Landroid/os/Handler;

    .line 23
    .line 24
    new-instance p2, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/shade/SecPanelPolicy$PhoneStateManager$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void
.end method
