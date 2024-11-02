.class public final Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;
.super Landroid/widget/ArrayAdapter;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

.field public final dropDownLayout:I

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public mSelectedIndex:I

.field public final parentContext:Landroid/content/Context;

.field public final viewLayout:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->parentContext:Landroid/content/Context;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->viewLayout:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->dropDownLayout:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 11
    .line 12
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->mSelectedIndex:I

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public final getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 11
    .line 12
    iget v2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->dropDownLayout:I

    .line 13
    .line 14
    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :cond_0
    const p3, 0x7f0a00d8

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    check-cast p3, Landroid/widget/ImageView;

    .line 26
    .line 27
    const/4 v2, 0x0

    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getIcon()Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    move-object v3, v2

    .line 36
    :goto_0
    invoke-virtual {p3, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    const p3, 0x7f0a02c7

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p3}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p3

    .line 46
    check-cast p3, Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getAppName()Ljava/lang/CharSequence;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    :cond_2
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .line 56
    .line 57
    sget-boolean v2, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 58
    .line 59
    if-eqz v2, :cond_4

    .line 60
    .line 61
    if-eqz v0, :cond_4

    .line 62
    .line 63
    iget-object v2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 64
    .line 65
    if-eqz v2, :cond_4

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getComponentName()Landroid/content/ComponentName;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    const v4, 0x7f0a012c

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, v4}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    check-cast v2, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 79
    .line 80
    iget-object v5, v2, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->badgeRequiredSet:Ljava/util/Set;

    .line 81
    .line 82
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    invoke-interface {v5, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-eqz v3, :cond_3

    .line 91
    .line 92
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :cond_3
    const/16 v1, 0x8

    .line 97
    .line 98
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    .line 100
    .line 101
    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getComponentName()Landroid/content/ComponentName;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getAppName()Ljava/lang/CharSequence;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v2, v1, p2, v0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->setDescription(Landroid/content/ComponentName;Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 110
    .line 111
    .line 112
    :cond_4
    iget v0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->mSelectedIndex:I

    .line 113
    .line 114
    if-ne v0, p1, :cond_5

    .line 115
    .line 116
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->parentContext:Landroid/content/Context;

    .line 117
    .line 118
    const p1, 0x7f0600db

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroid/content/Context;->getColor(I)I

    .line 122
    .line 123
    .line 124
    move-result p0

    .line 125
    const p1, 0x7f0a0252

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/ImageView;

    .line 133
    .line 134
    const v0, 0x7f080ac7

    .line 135
    .line 136
    .line 137
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 138
    .line 139
    .line 140
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 141
    .line 142
    .line 143
    move-result-object v0

    .line 144
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {p3, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    .line 149
    .line 150
    :cond_5
    return-object p2
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->layoutInflater:Landroid/view/LayoutInflater;

    .line 10
    .line 11
    iget p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->viewLayout:I

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p2, p0, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    :cond_0
    const p0, 0x7f0a02c7

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2, p0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Landroid/widget/TextView;

    .line 26
    .line 27
    if-eqz p1, :cond_1

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getAppName()Ljava/lang/CharSequence;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p1, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    .line 37
    .line 38
    sget-object p1, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 39
    .line 40
    const p3, 0x7f07021a

    .line 41
    .line 42
    .line 43
    invoke-static {p1, p0, p3}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->updateFontSize$default(Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V

    .line 44
    .line 45
    .line 46
    return-object p2
.end method
