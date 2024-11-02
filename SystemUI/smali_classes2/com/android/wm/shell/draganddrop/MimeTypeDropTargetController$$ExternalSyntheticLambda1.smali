.class public final synthetic Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/draganddrop/MimeTypeDropTargetController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->semForceHideSoftInput()Z

    .line 6
    .line 7
    .line 8
    const-string p0, "DragAndDropController_Mime"

    .line 9
    .line 10
    const-string v0, "Hide the Ime when Drag Layout is shown"

    .line 11
    .line 12
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    return-void
.end method
