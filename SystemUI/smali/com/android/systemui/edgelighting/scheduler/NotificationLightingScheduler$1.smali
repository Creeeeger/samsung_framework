.class public final Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;
.super Landroid/os/Handler;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget v0, p1, Landroid/os/Message;->what:I

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler$1;->this$0:Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;

    .line 10
    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/lang/String;

    .line 14
    .line 15
    sget-boolean v0, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->DEBUG:Z

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Lcom/android/systemui/edgelighting/scheduler/NotificationLightingScheduler;->expireNotiLighting(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
