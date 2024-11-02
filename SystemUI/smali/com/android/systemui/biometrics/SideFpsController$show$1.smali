.class public final Lcom/android/systemui/biometrics/SideFpsController$show$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $reason:I

.field public final synthetic $request:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

.field public final synthetic this$0:Lcom/android/systemui/biometrics/SideFpsController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/SideFpsController;Lcom/android/systemui/biometrics/SideFpsUiRequestSource;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->$request:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    .line 4
    .line 5
    iput p3, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->$reason:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/biometrics/SideFpsController;->overlayView:Landroid/view/View;

    .line 4
    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->$request:Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v1, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->$reason:I

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v3, "SideFpsController#show(request="

    .line 18
    .line 19
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v0, ", reason="

    .line 26
    .line 27
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v0, ")"

    .line 34
    .line 35
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    iget-object v1, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->this$0:Lcom/android/systemui/biometrics/SideFpsController;

    .line 43
    .line 44
    iget p0, p0, Lcom/android/systemui/biometrics/SideFpsController$show$1;->$reason:I

    .line 45
    .line 46
    const-wide/16 v2, 0x1000

    .line 47
    .line 48
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_0

    .line 53
    .line 54
    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 55
    .line 56
    .line 57
    :try_start_0
    invoke-virtual {v1, p0}, Lcom/android/systemui/biometrics/SideFpsController;->createOverlayForDisplay(I)V

    .line 58
    .line 59
    .line 60
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .line 62
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 68
    .line 69
    .line 70
    throw p0

    .line 71
    :cond_0
    invoke-virtual {v1, p0}, Lcom/android/systemui/biometrics/SideFpsController;->createOverlayForDisplay(I)V

    .line 72
    .line 73
    .line 74
    :cond_1
    :goto_0
    return-void
.end method
