.class public final Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;->this$0:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPageScrollStateChanged(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPageScrolled(FII)V
    .locals 0

    .line 1
    return-void
.end method

.method public final onPageSelected(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView$1;->this$0:Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;

    .line 3
    .line 4
    iget v2, v1, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dotscount:I

    .line 5
    .line 6
    if-ge v0, v2, :cond_0

    .line 7
    .line 8
    iget-object v2, v1, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    .line 9
    .line 10
    aget-object v2, v2, v0

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const v3, 0x7f080cbd

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p0, v1, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->dots:[Landroid/widget/ImageView;

    .line 32
    .line 33
    aget-object p0, p0, p1

    .line 34
    .line 35
    iget-object p1, v1, Lcom/android/systemui/qp/SubroomQuickSettingsBaseView;->mContext:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const v0, 0x7f08066e

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
