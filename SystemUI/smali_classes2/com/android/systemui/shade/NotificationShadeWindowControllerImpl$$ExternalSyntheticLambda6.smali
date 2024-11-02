.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

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
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Ljava/io/PrintWriter;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    .line 17
    .line 18
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_EM_TOKEN_CAPTURE_WINDOW:Z

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    iget-object v0, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->engineerModeManager:Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;

    .line 23
    .line 24
    iget-boolean v0, v0, Lcom/android/keyguard/emm/EngineeringModeManagerWrapper;->isCaptureEnabled:Z

    .line 25
    .line 26
    const-string v1, "  EMM="

    .line 27
    .line 28
    invoke-static {v1, v0, p0}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 29
    .line 30
    .line 31
    :cond_0
    return-void

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 33
    .line 34
    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda6;->f$1:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast p0, Landroid/view/ViewGroup;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->mHelper:Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;

    .line 39
    .line 40
    iput-object p0, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->notificationShadeView:Landroid/view/ViewGroup;

    .line 41
    .line 42
    new-instance v1, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$1;

    .line 43
    .line 44
    invoke-direct {v1, v0}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$1;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;)V

    .line 45
    .line 46
    .line 47
    iget-object v2, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->visibilityMonitor:Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;

    .line 48
    .line 49
    invoke-virtual {v2, p0, v1}, Lcom/android/systemui/keyguard/KeyguardVisibilityMonitor;->registerMonitor(Landroid/view/View;Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$1;)V

    .line 50
    .line 51
    .line 52
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_BOUNCER_WINDOW:Z

    .line 53
    .line 54
    if-eqz p0, :cond_1

    .line 55
    .line 56
    new-instance p0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$2;

    .line 57
    .line 58
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl$initView$2;-><init>(Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;Lkotlin/coroutines/Continuation;)V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    iget-object v0, v0, Lcom/android/systemui/shade/SecNotificationShadeWindowControllerHelperImpl;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 64
    .line 65
    invoke-static {v0, v1, v1, p0, v2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 66
    .line 67
    .line 68
    :cond_1
    return-void

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
