.class public final synthetic Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

.field public final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda1;->f$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 2
    .line 3
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda1;->f$1:Landroid/content/Context;

    .line 4
    .line 5
    sget v0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->$r8$clinit:I

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    const/4 v0, 0x0

    .line 15
    if-nez p2, :cond_0

    .line 16
    .line 17
    const-string p2, "input_method"

    .line 18
    .line 19
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWindowToken()Landroid/os/IBinder;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p0, p1, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 30
    .line 31
    .line 32
    :cond_0
    return v0
.end method
