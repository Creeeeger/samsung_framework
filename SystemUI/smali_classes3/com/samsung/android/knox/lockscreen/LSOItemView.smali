.class public final Lcom/samsung/android/knox/lockscreen/LSOItemView;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getView(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Landroid/view/View;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eq v0, v1, :cond_4

    .line 8
    .line 9
    const/4 v1, 0x2

    .line 10
    if-eq v0, v1, :cond_3

    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    if-eq v0, v1, :cond_2

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    .line 18
    const/4 v1, 0x5

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    move-object p0, v2

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    move-object v0, p1

    .line 24
    check-cast v0, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    .line 25
    .line 26
    invoke-static {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOWidgetView;->getWidget(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemWidget;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    goto :goto_1

    .line 31
    :cond_1
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOContainerView;

    .line 32
    .line 33
    move-object v1, p1

    .line 34
    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    .line 35
    .line 36
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOContainerView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemContainer;)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOImageView;

    .line 41
    .line 42
    move-object v1, p1

    .line 43
    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    .line 44
    .line 45
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOImageView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemImage;)V

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_3
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOTextView;

    .line 50
    .line 51
    move-object v1, p1

    .line 52
    check-cast v1, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    .line 53
    .line 54
    invoke-direct {v0, p0, v1}, Lcom/samsung/android/knox/lockscreen/LSOTextView;-><init>(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemText;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    new-instance v0, Landroid/widget/Space;

    .line 59
    .line 60
    invoke-direct {v0, p0}, Landroid/widget/Space;-><init>(Landroid/content/Context;)V

    .line 61
    .line 62
    .line 63
    :goto_0
    move-object p0, v0

    .line 64
    :goto_1
    if-nez p0, :cond_5

    .line 65
    .line 66
    return-object v2

    .line 67
    :cond_5
    const/16 v0, 0x10

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_6

    .line 74
    .line 75
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getBgColor()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 80
    .line 81
    .line 82
    :cond_6
    const/16 v0, 0x40

    .line 83
    .line 84
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->isFieldUpdated(I)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_8

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->size()I

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-lez v0, :cond_8

    .line 99
    .line 100
    const-string v0, "android:alpha"

    .line 101
    .line 102
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    .line 103
    .line 104
    .line 105
    move-result v1

    .line 106
    if-eqz v1, :cond_8

    .line 107
    .line 108
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    if-eqz v1, :cond_7

    .line 113
    .line 114
    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_7
    const/4 p1, 0x0

    .line 127
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 128
    .line 129
    .line 130
    :cond_8
    :goto_2
    return-object p0
.end method
