.class public final Lcom/android/systemui/navigationbar/SafeUINavigationBar;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBar;->mContext:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBar;->mWindowManager:Landroid/view/WindowManager;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final start()V
    .locals 6

    .line 1
    const-string v0, "SafeUINavigationBar"

    .line 2
    .line 3
    const-string/jumbo v1, "start"

    .line 4
    .line 5
    .line 6
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBar;->mContext:Landroid/content/Context;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/android/systemui/navigationbar/SafeUINavigationBar;->mWindowManager:Landroid/view/WindowManager;

    .line 14
    .line 15
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;-><init>(Landroid/content/Context;Landroid/view/WindowManager;)V

    .line 16
    .line 17
    .line 18
    iget-object p0, v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x7f0d02fd

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    iput-object v1, v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mView:Landroid/view/View;

    .line 33
    .line 34
    const v2, 0x7f0a080a

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    new-instance v2, Lcom/android/systemui/navigationbar/SafeUINavigationBarView$$ExternalSyntheticLambda0;

    .line 42
    .line 43
    invoke-direct {v2, v0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/SafeUINavigationBarView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    .line 48
    .line 49
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mWindowManager:Landroid/view/WindowManager;

    .line 50
    .line 51
    iget-object v2, v0, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->mView:Landroid/view/View;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object p0

    .line 57
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getRotation()I

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->getBarLayoutParamsForRotation()Landroid/view/WindowManager$LayoutParams;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    const/4 v3, 0x4

    .line 71
    new-array v3, v3, [Landroid/view/WindowManager$LayoutParams;

    .line 72
    .line 73
    iput-object v3, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 74
    .line 75
    const/4 v3, 0x0

    .line 76
    :goto_0
    const/4 v4, 0x3

    .line 77
    if-gt v3, v4, :cond_0

    .line 78
    .line 79
    iget-object v4, p0, Landroid/view/WindowManager$LayoutParams;->paramsForRotation:[Landroid/view/WindowManager$LayoutParams;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/SafeUINavigationBarView;->getBarLayoutParamsForRotation()Landroid/view/WindowManager$LayoutParams;

    .line 82
    .line 83
    .line 84
    move-result-object v5

    .line 85
    aput-object v5, v4, v3

    .line 86
    .line 87
    add-int/lit8 v3, v3, 0x1

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_0
    invoke-interface {v1, v2, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception p0

    .line 95
    const-string v0, "SafeUINavigationBarView"

    .line 96
    .line 97
    const-string v1, "NavigationBar addView Exception :"

    .line 98
    .line 99
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    .line 101
    .line 102
    :goto_1
    return-void
.end method
