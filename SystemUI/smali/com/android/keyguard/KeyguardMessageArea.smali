.class public abstract Lcom/android/keyguard/KeyguardMessageArea;
.super Lcom/android/systemui/widget/SystemUITextView;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/keyguard/SecurityMessageDisplay;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mClearMessageRunnable:Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda0;

.field public mContainer:Landroid/view/ViewGroup;

.field public mHandler:Landroid/os/Handler;

.field public mIsDisabled:Z

.field public mIsVisible:Z

.field public mMessage:Ljava/lang/CharSequence;

.field public final mStyleResId:I

.field public mTimeout:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/widget/SystemUITextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsDisabled:Z

    .line 6
    .line 7
    const-wide/16 v0, 0xbb8

    .line 8
    .line 9
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 10
    .line 11
    new-instance p1, Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda0;

    .line 12
    .line 13
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardMessageArea;)V

    .line 14
    .line 15
    .line 16
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda0;

    .line 17
    .line 18
    const/4 p1, 0x2

    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 21
    .line 22
    .line 23
    if-eqz p2, :cond_0

    .line 24
    .line 25
    invoke-interface {p2}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mStyleResId:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const p1, 0x7f1401ce

    .line 33
    .line 34
    .line 35
    iput p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mStyleResId:I

    .line 36
    .line 37
    :goto_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->onThemeChanged()V

    .line 38
    .line 39
    .line 40
    return-void
.end method


# virtual methods
.method public final onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/systemui/widget/SystemUITextView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/widget/TextView;->getRootView()Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const v1, 0x7f0a0537

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Landroid/view/ViewGroup;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mContainer:Landroid/view/ViewGroup;

    .line 18
    .line 19
    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    if-nez p2, :cond_1

    .line 6
    .line 7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 10
    .line 11
    .line 12
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->is2StepVerification()Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-eqz p2, :cond_0

    .line 25
    .line 26
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    invoke-interface {p1, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->getFingerprintAuthenticated(I)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 38
    .line 39
    iget-object p2, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda0;

    .line 40
    .line 41
    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 42
    .line 43
    .line 44
    iget-wide p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mTimeout:J

    .line 45
    .line 46
    const-wide/16 v0, 0x0

    .line 47
    .line 48
    cmp-long v0, p1, v0

    .line 49
    .line 50
    if-lez v0, :cond_2

    .line 51
    .line 52
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mClearMessageRunnable:Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda0;

    .line 55
    .line 56
    invoke-virtual {v0, p0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_1
    const/4 p1, 0x0

    .line 61
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 62
    .line 63
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMessageArea;->update()V

    .line 64
    .line 65
    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public final update()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/os/Handler;

    .line 6
    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 15
    .line 16
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mIsDisabled:Z

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const/16 v0, 0x8

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMessageArea;->mMessage:Ljava/lang/CharSequence;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/android/keyguard/KeyguardMessageArea;->mHandler:Landroid/os/Handler;

    .line 29
    .line 30
    new-instance v2, Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;

    .line 31
    .line 32
    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardMessageArea$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardMessageArea;Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    .line 37
    .line 38
    return-void
.end method
