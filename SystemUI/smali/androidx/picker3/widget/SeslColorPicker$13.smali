.class public final Landroidx/picker3/widget/SeslColorPicker$13;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker3/widget/SeslColorPicker;

.field public final synthetic val$editText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroidx/picker3/widget/SeslColorPicker;Landroid/widget/EditText;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$13;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 2
    .line 3
    iput-object p2, p0, Landroidx/picker3/widget/SeslColorPicker$13;->val$editText:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/picker3/widget/SeslColorPicker$13;->this$0:Landroidx/picker3/widget/SeslColorPicker;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/picker3/widget/SeslColorPicker$13;->val$editText:Landroid/widget/EditText;

    .line 6
    .line 7
    iput-object p0, p1, Landroidx/picker3/widget/SeslColorPicker;->mLastFocussedEditText:Landroid/widget/EditText;

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    iput-boolean p0, p1, Landroidx/picker3/widget/SeslColorPicker;->mIsInputFromUser:Z

    .line 11
    .line 12
    :cond_0
    return-void
.end method
