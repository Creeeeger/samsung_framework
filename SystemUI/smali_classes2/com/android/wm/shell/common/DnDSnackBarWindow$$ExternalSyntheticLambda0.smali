.class public final synthetic Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/common/DnDSnackBarWindow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/DnDSnackBarWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/DnDSnackBarWindow$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/common/DnDSnackBarWindow;

    .line 2
    .line 3
    sget p1, Lcom/android/wm/shell/common/DnDSnackBarWindow;->$r8$clinit:I

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    const/4 p2, 0x4

    .line 15
    if-eq p1, p2, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/common/DnDSnackBarWindow;->hide()V

    .line 19
    .line 20
    .line 21
    :goto_0
    const/4 p0, 0x1

    .line 22
    return p0
.end method
