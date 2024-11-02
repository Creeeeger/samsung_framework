.class public final Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

.field public final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;


# direct methods
.method public constructor <init>(Landroidx/slice/widget/RemoteInputView$RemoteEditText;Landroid/view/inputmethod/InputMethodManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->viewClicked(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    .line 9
    .line 10
    iget-object p0, p0, Landroidx/slice/widget/RemoteInputView$RemoteEditText$1;->this$0:Landroidx/slice/widget/RemoteInputView$RemoteEditText;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method
