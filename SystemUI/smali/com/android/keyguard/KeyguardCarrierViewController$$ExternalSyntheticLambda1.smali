.class public final synthetic Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardCarrierViewController;

.field public final synthetic f$1:Lcom/android/keyguard/KeyguardSecurityCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardCarrierViewController;Lcom/android/keyguard/KeyguardSecurityCallback;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 4
    .line 5
    iput-object p2, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$1:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 8
    .line 9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$1:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    const-string v0, "KeyguardCarrierView"

    .line 15
    .line 16
    new-instance v1, Landroid/content/Intent;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const-string/jumbo v3, "tel"

    .line 20
    .line 21
    .line 22
    const-string v4, "0000"

    .line 23
    .line 24
    invoke-static {v3, v4, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const-string v3, "android.intent.action.CALL_PRIVILEGED"

    .line 29
    .line 30
    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 31
    .line 32
    .line 33
    const/high16 v2, 0x10000000

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    :try_start_0
    const-string v2, "click call button"

    .line 39
    .line 40
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget-object p1, p1, Lcom/android/keyguard/KeyguardCarrierViewController;->mContext:Landroid/content/Context;

    .line 44
    .line 45
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 46
    .line 47
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityCallback;->userActivity()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :catch_0
    move-exception p0

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v1, "Can\'t find the component "

    .line 58
    .line 59
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void

    .line 73
    :goto_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$0:Lcom/android/keyguard/KeyguardCarrierViewController;

    .line 74
    .line 75
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierViewController$$ExternalSyntheticLambda1;->f$1:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 76
    .line 77
    iget-object p1, p1, Lcom/android/keyguard/KeyguardCarrierViewController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 78
    .line 79
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isCarrierPasswordSaved(I)Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-eqz p1, :cond_0

    .line 88
    .line 89
    sget-object p1, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->SKTCarrierPassword:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 90
    .line 91
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->showBackupSecurity(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;)V

    .line 92
    .line 93
    .line 94
    :cond_0
    return-void

    .line 95
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
