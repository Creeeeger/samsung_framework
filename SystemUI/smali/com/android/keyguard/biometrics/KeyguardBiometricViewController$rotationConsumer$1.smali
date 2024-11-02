.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/util/function/IntConsumer;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricViewLayout()V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 12
    .line 13
    iget-boolean v0, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconVisibility(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    .line 21
    .line 22
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-lez p1, :cond_0

    .line 27
    .line 28
    const/4 p1, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p1, 0x0

    .line 31
    :goto_0
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$rotationConsumer$1;->this$0:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    .line 44
    .line 45
    .line 46
    :goto_1
    return-void
.end method
