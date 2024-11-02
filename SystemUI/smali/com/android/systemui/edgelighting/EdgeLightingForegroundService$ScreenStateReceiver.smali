.class public final Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;


# direct methods
.method private constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;-><init>(Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;)V

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
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    iget-object p0, p0, Lcom/android/systemui/edgelighting/EdgeLightingForegroundService$ScreenStateReceiver;->this$0:Lcom/android/systemui/edgelighting/EdgeLightingForegroundService;

    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 29
    .line 30
    .line 31
    :cond_1
    :goto_0
    return-void
.end method
