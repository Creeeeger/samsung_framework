.class public final synthetic Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

.field public final synthetic f$1:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardSecSecurityContainer;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecSecurityContainer$$ExternalSyntheticLambda0;->f$1:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4
    .line 5
    sget p2, Lcom/android/keyguard/KeyguardSecSecurityContainer;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const/4 p2, 0x0

    .line 11
    invoke-interface {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->setDisableBiometricBySecurityDialog(Z)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 15
    .line 16
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->reset()V

    .line 17
    .line 18
    .line 19
    iput-boolean p2, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mDisappearAnimRunning:Z

    .line 20
    .line 21
    return-void
.end method
