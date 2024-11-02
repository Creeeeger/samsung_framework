.class public final Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;


# instance fields
.field public final TAG:Ljava/lang/String;

.field public currentIsUpSide:I

.field public final synthetic this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class p1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final getMode()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final onChangedUpdown(I)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "onChangedUpdown: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " -> "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    .line 30
    .line 31
    iget v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    .line 32
    .line 33
    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    if-eq v0, p1, :cond_0

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->stopTurnOver()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v0, 0x1

    .line 44
    if-ne p1, v0, :cond_1

    .line 45
    .line 46
    iget-object v0, v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onTurnOver(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    iget-object v0, v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onTurnRight()V

    .line 56
    .line 57
    .line 58
    :goto_0
    iput p1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->currentIsUpSide:I

    .line 59
    .line 60
    return-void
.end method

.method public final onNotification()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/Exception;

    .line 2
    .line 3
    const-string v1, "StateNoti$onNotification: should not reach here at normal case"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 12
    .line 13
    iget v1, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    if-ne v1, v2, :cond_0

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onTurnOver(Z)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onTurnRight()V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-object p0
.end method

.method public final onNotificationEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "onNotificationEnd"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mUpsideDownChecker:Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/turnover/UpsideDownChecker;->cancel()V

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    .line 18
    .line 19
    iget-object v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onIdle()V

    .line 22
    .line 23
    .line 24
    new-instance v1, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;

    .line 25
    .line 26
    invoke-direct {v1, p0, v0}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateIdle;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    .line 27
    .line 28
    .line 29
    return-object v1
.end method

.method public final onRinging()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "onRinging. So hide edge effect"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateNoti;->this$0:Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;

    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mListener:Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/edgelighting/scheduler/EdgeLightingScheduler$5;->onIdle()V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;

    .line 17
    .line 18
    iget v1, p0, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;->mIsUpsideDown:I

    .line 19
    .line 20
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$StateCall;-><init>(Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting;I)V

    .line 21
    .line 22
    .line 23
    return-object v0
.end method

.method public final onRingingEnd()Lcom/android/systemui/edgelighting/turnover/TurnOverEdgeLighting$ITurnModeState;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Exception;

    .line 2
    .line 3
    const-string v1, "StateNoti$onRingingEnd: should not reach here at normal case"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 9
    .line 10
    .line 11
    return-object p0
.end method
