.class public final Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;
.super Lcom/android/keyguard/SecCountDownTimer;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyguardSecIndicationController;JJLandroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V
    .locals 9

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p1

    .line 3
    iput-object v1, v0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 4
    .line 5
    move-wide v1, p2

    .line 6
    move-wide v3, p4

    .line 7
    move-object v5, p6

    .line 8
    move-object/from16 v6, p7

    .line 9
    .line 10
    move-object/from16 v7, p8

    .line 11
    .line 12
    move/from16 v8, p9

    .line 13
    .line 14
    invoke-direct/range {v0 .. v8}, Lcom/android/keyguard/SecCountDownTimer;-><init>(JJLandroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardTextBuilder;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onFinish()V
    .locals 3

    .line 1
    const-string v0, "KeyguardSecIndicationController"

    .line 2
    .line 3
    const-string v1, "CountdownTimer - onFinish()"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyguardIndicationController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 11
    .line 12
    sget-object v1, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_FACE_LOCKOUT_RESET:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->mCountDownTimer:Lcom/android/keyguard/SecCountDownTimer;

    .line 22
    .line 23
    sget-object v0, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 24
    .line 25
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->removeIndication(Lcom/android/systemui/statusbar/IndicationEventType;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public final onTick(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/keyguard/SecCountDownTimer;->onTick(J)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/android/keyguard/SecCountDownTimer;->mTimerText:Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result p2

    .line 10
    if-nez p2, :cond_0

    .line 11
    .line 12
    const-string p2, "CountdownTimer - "

    .line 13
    .line 14
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    const-string v0, "KeyguardSecIndicationController"

    .line 19
    .line 20
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyguardSecIndicationController$9;->this$0:Lcom/android/systemui/statusbar/KeyguardSecIndicationController;

    .line 24
    .line 25
    sget-object p2, Lcom/android/systemui/statusbar/IndicationEventType;->PPP_COOLDOWN:Lcom/android/systemui/statusbar/IndicationEventType;

    .line 26
    .line 27
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/KeyguardSecIndicationController;->addIndication(Lcom/android/systemui/statusbar/IndicationEventType;Ljava/lang/CharSequence;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
