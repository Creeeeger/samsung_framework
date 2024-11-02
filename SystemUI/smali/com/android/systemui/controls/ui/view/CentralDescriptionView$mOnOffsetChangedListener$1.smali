.class public final Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controls/ui/view/CentralDescriptionView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/view/CentralDescriptionView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;->this$0:Lcom/android/systemui/controls/ui/view/CentralDescriptionView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onOffsetChanged(Lcom/google/android/material/appbar/AppBarLayout;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getHeight()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    int-to-float v0, v0

    .line 6
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->seslGetCollapsedHeight()F

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    sub-float/2addr v0, p1

    .line 11
    float-to-int p1, v0

    .line 12
    add-int/2addr p1, p2

    .line 13
    div-int/lit8 p1, p1, 0x2

    .line 14
    .line 15
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/CentralDescriptionView$mOnOffsetChangedListener$1;->this$0:Lcom/android/systemui/controls/ui/view/CentralDescriptionView;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-lez p2, :cond_1

    .line 22
    .line 23
    const/4 p2, 0x0

    .line 24
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    sub-int/2addr v0, p2

    .line 39
    div-int/lit8 v0, v0, 0x2

    .line 40
    .line 41
    if-le p1, v0, :cond_1

    .line 42
    .line 43
    move p1, v0

    .line 44
    :cond_1
    int-to-float p1, p1

    .line 45
    neg-float p1, p1

    .line 46
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
