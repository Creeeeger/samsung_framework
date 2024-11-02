.class public final Landroidx/picker/widget/SeslAppPickerSelectLayout$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$4;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout$4;->this$0:Landroidx/picker/widget/SeslAppPickerSelectLayout;

    .line 2
    .line 3
    iget-boolean p1, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderVisibility:Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    sub-int/2addr p5, p3

    .line 8
    iput p5, p0, Landroidx/picker/widget/SeslAppPickerSelectLayout;->mHeaderHeight:I

    .line 9
    .line 10
    new-instance p1, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;

    .line 11
    .line 12
    const/4 p2, 0x5

    .line 13
    invoke-direct {p1, p0, p2}, Landroidx/picker/widget/SeslAppPickerSelectLayout$$ExternalSyntheticLambda0;-><init>(Landroidx/picker/widget/SeslAppPickerSelectLayout;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
