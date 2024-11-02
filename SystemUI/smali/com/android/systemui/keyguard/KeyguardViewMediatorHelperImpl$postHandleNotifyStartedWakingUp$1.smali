.class public final Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleNotifyStartedWakingUp$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleNotifyStartedWakingUp$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl$postHandleNotifyStartedWakingUp$1;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;

    .line 2
    .line 3
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->lastWakeReason:I

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    const-string/jumbo v2, "updateSALogging "

    .line 8
    .line 9
    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->logD(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq v0, v1, :cond_5

    .line 25
    .line 26
    const/4 v1, 0x4

    .line 27
    if-eq v0, v1, :cond_4

    .line 28
    .line 29
    const/4 v1, 0x7

    .line 30
    if-eq v0, v1, :cond_3

    .line 31
    .line 32
    const/16 v1, 0x9

    .line 33
    .line 34
    if-eq v0, v1, :cond_2

    .line 35
    .line 36
    const/16 v1, 0x67

    .line 37
    .line 38
    if-eq v0, v1, :cond_2

    .line 39
    .line 40
    const/16 v1, 0x70

    .line 41
    .line 42
    if-eq v0, v1, :cond_1

    .line 43
    .line 44
    const/16 v1, 0x71

    .line 45
    .line 46
    if-eq v0, v1, :cond_0

    .line 47
    .line 48
    const-string v0, "5"

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "7"

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    const-string v0, "2"

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_2
    const-string v0, "4"

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    const-string v0, "6"

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const-string v0, "3"

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_5
    const-string v0, "1"

    .line 67
    .line 68
    :goto_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_UI:Z

    .line 69
    .line 70
    const-string v2, "1062"

    .line 71
    .line 72
    if-eqz v1, :cond_7

    .line 73
    .line 74
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelperImpl;->foldControllerImpl:Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFoldControllerImpl;->isFoldOpened()Z

    .line 77
    .line 78
    .line 79
    move-result p0

    .line 80
    if-nez p0, :cond_7

    .line 81
    .line 82
    sget-boolean p0, Lcom/android/systemui/LsRune;->SUPPORT_LARGE_FRONT_SUB_DISPLAY:Z

    .line 83
    .line 84
    if-eqz p0, :cond_6

    .line 85
    .line 86
    const-string p0, "101_S"

    .line 87
    .line 88
    goto :goto_1

    .line 89
    :cond_6
    const-string p0, "500"

    .line 90
    .line 91
    const-string v2, "5001"

    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_7
    const-string p0, "101"

    .line 95
    .line 96
    :goto_1
    invoke-static {p0, v2, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    return-void
.end method
