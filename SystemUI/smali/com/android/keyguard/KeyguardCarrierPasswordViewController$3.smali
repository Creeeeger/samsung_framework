.class public final Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardCarrierPasswordViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 4
    .line 5
    check-cast v0, Lcom/android/keyguard/KeyguardCarrierPasswordView;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 18
    .line 19
    .line 20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController$3;->this$0:Lcom/android/keyguard/KeyguardCarrierPasswordViewController;

    .line 21
    .line 22
    iget-object v0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 23
    .line 24
    iget-object p0, p0, Lcom/android/keyguard/KeyguardCarrierPasswordViewController;->mPasswordEntry:Landroid/widget/EditText;

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
