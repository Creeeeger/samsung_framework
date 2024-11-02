.class public final Landroidx/picker/widget/SeslColorPicker$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/picker/widget/SeslColorPicker;


# direct methods
.method public constructor <init>(Landroidx/picker/widget/SeslColorPicker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_1

    .line 11
    .line 12
    const/4 v2, 0x6

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    .line 16
    .line 17
    iget-object v2, v2, Landroidx/picker/widget/SeslColorPicker;->mRecentColorListLayout:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    .line 33
    .line 34
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    .line 35
    .line 36
    iget-object v2, v2, Landroidx/picker/widget/SeslColorPicker;->mRecentColorValues:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    iget-object v3, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    .line 49
    .line 50
    iget-object v3, v3, Landroidx/picker/widget/SeslColorPicker;->mPickedColor:Landroidx/picker/widget/SeslColorPicker$PickedColor;

    .line 51
    .line 52
    invoke-virtual {v3, v2}, Landroidx/picker/widget/SeslColorPicker$PickedColor;->setColor(I)V

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    .line 56
    .line 57
    invoke-virtual {v3, v2}, Landroidx/picker/widget/SeslColorPicker;->mapColorOnColorWheel(I)V

    .line 58
    .line 59
    .line 60
    iget-object v2, p0, Landroidx/picker/widget/SeslColorPicker$4;->this$0:Landroidx/picker/widget/SeslColorPicker;

    .line 61
    .line 62
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    return-void
.end method
