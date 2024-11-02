.class public final Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $onDrawn:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/keyguard/mediator/ScreenOnCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/mediator/ScreenOnCoordinator;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1;->this$0:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1;->$onDrawn:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1;->this$0:Lcom/android/keyguard/mediator/ScreenOnCoordinator;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/keyguard/mediator/ScreenOnCoordinator;->mainHandler:Landroid/os/Handler;

    .line 4
    .line 5
    new-instance v1, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1$1;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1;->$onDrawn:Ljava/lang/Runnable;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/android/keyguard/mediator/ScreenOnCoordinator$onScreenTurningOn$1$1;-><init>(Ljava/lang/Runnable;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method
