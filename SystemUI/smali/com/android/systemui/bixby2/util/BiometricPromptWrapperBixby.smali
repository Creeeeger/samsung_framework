.class public Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field private static final TAG:Ljava/lang/String; = "BiometricPromptWrapperBixby"


# instance fields
.field private final mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

.field private mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$tKrgv438q4oKJekk9n-JakXP7Q0(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->lambda$buildAndRun$0(Ljava/lang/Runnable;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Handler;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mHandler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance v0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby$1;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby$1;-><init>(Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 21
    .line 22
    iput-object p1, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    new-instance v0, Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 25
    .line 26
    invoke-direct {v0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    .line 28
    .line 29
    iput-object v0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 30
    .line 31
    return-void
.end method

.method private static synthetic lambda$buildAndRun$0(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public buildAndRun(Landroid/os/CancellationSignal;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->build()Landroid/hardware/biometrics/BiometricPrompt;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    invoke-direct {v1}, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby$$ExternalSyntheticLambda0;-><init>()V

    .line 10
    .line 11
    .line 12
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mCallback:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;

    .line 13
    .line 14
    invoke-virtual {v0, p1, v1, p0}, Landroid/hardware/biometrics/BiometricPrompt;->authenticate(Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public initPrompt(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/bixby2/util/BiometricPromptWrapperBixby;->mBuilder:Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0, p2}, Landroid/hardware/biometrics/BiometricPrompt$Builder;->setDeviceCredentialAllowed(Z)Landroid/hardware/biometrics/BiometricPrompt$Builder;

    .line 8
    .line 9
    .line 10
    return-void
.end method
