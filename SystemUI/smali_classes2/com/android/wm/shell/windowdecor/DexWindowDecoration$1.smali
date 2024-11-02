.class public final Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

.field public final synthetic val$mainLayout:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DexWindowDecoration;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;->this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;->val$mainLayout:Landroid/view/View;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;->this$0:Lcom/android/wm/shell/windowdecor/DexWindowDecoration;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration$1;->val$mainLayout:Landroid/view/View;

    .line 4
    .line 5
    sget v0, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {p1, p0}, Lcom/android/wm/shell/windowdecor/DexWindowDecoration;->showRestartSnackbar(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
.end method
