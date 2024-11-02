.class public final synthetic Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda5;->f$1:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda5;->f$0:Lcom/android/keyguard/KeyguardSecPasswordViewController;

    .line 2
    .line 3
    iget p0, p0, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda5;->f$1:I

    .line 4
    .line 5
    iget-object v1, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 6
    .line 7
    check-cast v1, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 8
    .line 9
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isShown()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-object v1, v0, Lcom/android/keyguard/KeyguardPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v1}, Landroid/widget/EditText;->isEnabled()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardPasswordViewController;->isHideKeyboardByDefault()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    if-ne p0, v2, :cond_0

    .line 34
    .line 35
    iget-boolean p0, v0, Lcom/android/keyguard/KeyguardPasswordViewController;->mShowImeAtScreenOn:Z

    .line 36
    .line 37
    if-eqz p0, :cond_1

    .line 38
    .line 39
    :cond_0
    iget-object p0, v0, Lcom/android/keyguard/KeyguardPasswordViewController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 40
    .line 41
    invoke-virtual {p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 42
    .line 43
    .line 44
    move-result p0

    .line 45
    if-nez p0, :cond_1

    .line 46
    .line 47
    iget-object p0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 48
    .line 49
    check-cast p0, Lcom/android/keyguard/KeyguardSecPasswordView;

    .line 50
    .line 51
    new-instance v1, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda6;

    .line 52
    .line 53
    invoke-direct {v1, v0}, Lcom/android/keyguard/KeyguardSecPasswordViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/KeyguardSecPasswordViewController;)V

    .line 54
    .line 55
    .line 56
    const-wide/16 v2, 0x64

    .line 57
    .line 58
    invoke-virtual {p0, v1, v2, v3}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
