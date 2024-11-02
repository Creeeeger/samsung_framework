.class public final Lcom/google/android/material/bottomnavigation/BottomNavigationView$2$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic val$bottomNaviView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomnavigation/BottomNavigationView$2;Landroid/view/ViewGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p2, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2$1;->val$bottomNaviView:Landroid/view/ViewGroup;

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
    .locals 9

    .line 1
    new-instance v0, Landroidx/core/view/SeslTouchTargetDelegate;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2$1;->val$bottomNaviView:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/core/view/SeslTouchTargetDelegate;-><init>(Landroid/view/View;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2$1;->val$bottomNaviView:Landroid/view/ViewGroup;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    const/4 v2, 0x0

    .line 15
    move v3, v2

    .line 16
    :goto_0
    if-ge v3, v1, :cond_1

    .line 17
    .line 18
    iget-object v4, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2$1;->val$bottomNaviView:Landroid/view/ViewGroup;

    .line 19
    .line 20
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    instance-of v5, v4, Lcom/google/android/material/bottomnavigation/BottomNavigationMenuView;

    .line 25
    .line 26
    if-eqz v5, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v4, 0x0

    .line 33
    :goto_1
    if-eqz v4, :cond_6

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-nez v1, :cond_6

    .line 40
    .line 41
    check-cast v4, Landroid/view/ViewGroup;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    move v3, v2

    .line 48
    move v5, v3

    .line 49
    :goto_2
    if-ge v3, v1, :cond_5

    .line 50
    .line 51
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v6

    .line 55
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-nez v7, :cond_4

    .line 60
    .line 61
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    div-int/lit8 v5, v5, 0x2

    .line 66
    .line 67
    if-nez v3, :cond_2

    .line 68
    .line 69
    move v7, v5

    .line 70
    goto :goto_3

    .line 71
    :cond_2
    move v7, v2

    .line 72
    :goto_3
    add-int/lit8 v8, v1, -0x1

    .line 73
    .line 74
    if-ne v3, v8, :cond_3

    .line 75
    .line 76
    move v8, v5

    .line 77
    goto :goto_4

    .line 78
    :cond_3
    move v8, v2

    .line 79
    :goto_4
    invoke-static {v7, v5, v8, v5}, Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;->of(IIII)Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;

    .line 80
    .line 81
    .line 82
    move-result-object v5

    .line 83
    invoke-virtual {v0, v6, v5}, Landroidx/core/view/SeslTouchTargetDelegate;->addTouchDelegate(Landroid/view/View;Landroidx/core/view/SeslTouchTargetDelegate$ExtraInsets;)V

    .line 84
    .line 85
    .line 86
    const/4 v5, 0x1

    .line 87
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_5
    move v2, v5

    .line 91
    :cond_6
    if-eqz v2, :cond_7

    .line 92
    .line 93
    iget-object p0, p0, Lcom/google/android/material/bottomnavigation/BottomNavigationView$2$1;->val$bottomNaviView:Landroid/view/ViewGroup;

    .line 94
    .line 95
    invoke-virtual {p0, v0}, Landroid/view/View;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    .line 96
    .line 97
    .line 98
    :cond_7
    return-void
.end method
