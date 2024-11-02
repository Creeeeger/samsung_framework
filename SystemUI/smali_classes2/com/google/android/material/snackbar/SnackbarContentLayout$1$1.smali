.class public final Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;


# direct methods
.method public constructor <init>(Lcom/google/android/material/snackbar/SnackbarContentLayout$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

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
    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->mSnackBarContentLayout:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Landroidx/core/view/SeslTouchTargetDelegate;-><init>(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    .line 13
    .line 14
    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 15
    .line 16
    iget-object v1, v1, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/Button;->getMeasuredHeight()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    div-int/lit8 v1, v1, 0x2

    .line 23
    .line 24
    iget-object v2, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    .line 25
    .line 26
    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/google/android/material/snackbar/SnackbarContentLayout;->actionView:Landroid/widget/Button;

    .line 29
    .line 30
    invoke-static {v1, v1, v1, v1}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-virtual {v0, v2, v1}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V

    .line 35
    .line 36
    .line 37
    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1$1;->this$1:Lcom/google/android/material/snackbar/SnackbarContentLayout$1;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout$1;->this$0:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/google/android/material/snackbar/SnackbarContentLayout;->mSnackBarContentLayout:Lcom/google/android/material/snackbar/SnackbarContentLayout;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 44
    .line 45
    .line 46
    return-void
.end method
