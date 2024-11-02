.class public final Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;
.super Lcom/android/systemui/controls/management/adapter/Holder;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final buttonClickCallback:Landroid/view/View$OnClickListener;

.field public final launchButton:Landroid/widget/Button;

.field public final launchButtonLayout:Landroid/widget/LinearLayout;

.field public final spinner:Lcom/android/systemui/controls/ui/view/ControlsSpinner;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;Landroid/view/View$OnClickListener;Lcom/android/systemui/controls/controller/util/BadgeProvider;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;",
            "Landroid/view/View$OnClickListener;",
            "Lcom/android/systemui/controls/controller/util/BadgeProvider;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/controls/management/adapter/Holder;-><init>(Landroid/view/View;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    .line 4
    .line 5
    iput-object p4, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->buttonClickCallback:Landroid/view/View$OnClickListener;

    .line 6
    .line 7
    const v0, 0x7f0a02c6

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->spinner:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 17
    .line 18
    const v1, 0x7f0a057e

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/widget/LinearLayout;

    .line 26
    .line 27
    iput-object v1, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->launchButtonLayout:Landroid/widget/LinearLayout;

    .line 28
    .line 29
    const v1, 0x7f0a057d

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    check-cast p1, Landroid/widget/Button;

    .line 37
    .line 38
    iput-object p1, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->launchButton:Landroid/widget/Button;

    .line 39
    .line 40
    iput-object p2, v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerTouchCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerTouchCallback;

    .line 41
    .line 42
    iput-object p3, v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    .line 43
    .line 44
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 45
    .line 46
    if-eqz p0, :cond_0

    .line 47
    .line 48
    iput-object p5, v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 49
    .line 50
    :cond_0
    sget-boolean p0, Lcom/android/systemui/BasicRune;->CONTROLS_PROVIDER_INFO:Z

    .line 51
    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1, p4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    sget-object p0, Lcom/android/systemui/controls/ui/util/ControlsUtil;->Companion:Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;

    .line 58
    .line 59
    const p2, 0x7f07023d

    .line 60
    .line 61
    .line 62
    invoke-static {p0, p1, p2}, Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;->updateFontSize$default(Lcom/android/systemui/controls/ui/util/ControlsUtil$Companion;Landroid/widget/TextView;I)V

    .line 63
    .line 64
    .line 65
    :cond_1
    return-void
.end method


# virtual methods
.method public final bindData(Lcom/android/systemui/controls/management/model/MainModel;)V
    .locals 7

    .line 1
    instance-of v0, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->CONTROLS_PROVIDER_INFO:Z

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz v0, :cond_2

    .line 13
    .line 14
    move-object v0, p1

    .line 15
    check-cast v0, Lcom/android/systemui/controls/management/model/MainComponentModel;

    .line 16
    .line 17
    iget-boolean v0, v0, Lcom/android/systemui/controls/management/model/MainComponentModel;->showButton:Z

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->launchButton:Landroid/widget/Button;

    .line 20
    .line 21
    iget-object v5, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->launchButtonLayout:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    if-eqz v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {v5, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->buttonClickCallback:Landroid/view/View$OnClickListener;

    .line 29
    .line 30
    invoke-virtual {v4, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 38
    .line 39
    .line 40
    :cond_2
    :goto_0
    check-cast p1, Lcom/android/systemui/controls/management/model/MainComponentModel;

    .line 41
    .line 42
    iget-object v0, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;->controlsSpinnerInfo:Ljava/util/List;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/systemui/controls/management/model/MainComponentModel;->selected:Landroid/content/ComponentName;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/systemui/controls/management/adapter/SpinnerLayoutHolder;->spinner:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 47
    .line 48
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    .line 50
    .line 51
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    const/4 v5, 0x1

    .line 56
    if-gt v4, v5, :cond_7

    .line 57
    .line 58
    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    .line 59
    .line 60
    if-nez p1, :cond_3

    .line 61
    .line 62
    move-object p1, v1

    .line 63
    :cond_3
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 68
    .line 69
    if-eqz v0, :cond_4

    .line 70
    .line 71
    invoke-virtual {v0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getAppName()Ljava/lang/CharSequence;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    goto :goto_1

    .line 76
    :cond_4
    move-object v0, v1

    .line 77
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    .line 81
    .line 82
    if-nez p1, :cond_5

    .line 83
    .line 84
    move-object p1, v1

    .line 85
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    .line 87
    .line 88
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    .line 89
    .line 90
    if-nez p0, :cond_6

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_6
    move-object v1, p0

    .line 94
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 95
    .line 96
    .line 97
    goto/16 :goto_3

    .line 98
    .line 99
    :cond_7
    iget-object v4, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->noSpinner:Landroid/widget/TextView;

    .line 100
    .line 101
    if-nez v4, :cond_8

    .line 102
    .line 103
    move-object v4, v1

    .line 104
    :cond_8
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    iget-object v2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    .line 108
    .line 109
    if-nez v2, :cond_9

    .line 110
    .line 111
    move-object v2, v1

    .line 112
    :cond_9
    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    new-instance v2, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

    .line 116
    .line 117
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    iget-object v4, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 122
    .line 123
    const v5, 0x7f0d0095

    .line 124
    .line 125
    .line 126
    const v6, 0x7f0d0094

    .line 127
    .line 128
    .line 129
    invoke-direct {v2, v3, v5, v6, v4}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;-><init>(Landroid/content/Context;IILcom/android/systemui/controls/controller/util/BadgeProvider;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v2, v0}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 133
    .line 134
    .line 135
    iget-object v3, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinner:Lcom/android/systemui/controls/ui/view/ControlsAppCompatSpinner;

    .line 136
    .line 137
    if-nez v3, :cond_a

    .line 138
    .line 139
    move-object v3, v1

    .line 140
    :cond_a
    invoke-virtual {v3, v2}, Landroidx/appcompat/widget/AppCompatSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v3}, Landroid/widget/Spinner;->getResources()Landroid/content/res/Resources;

    .line 144
    .line 145
    .line 146
    move-result-object v4

    .line 147
    const v5, 0x7f070219

    .line 148
    .line 149
    .line 150
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    float-to-int v4, v4

    .line 155
    invoke-virtual {v3, v4}, Landroidx/appcompat/widget/AppCompatSpinner;->setDropDownHorizontalOffset(I)V

    .line 156
    .line 157
    .line 158
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 159
    .line 160
    .line 161
    move-result-object v4

    .line 162
    :cond_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 163
    .line 164
    .line 165
    move-result v5

    .line 166
    if-eqz v5, :cond_c

    .line 167
    .line 168
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    move-object v6, v5

    .line 173
    check-cast v6, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 174
    .line 175
    invoke-virtual {v6}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;->getComponentName()Landroid/content/ComponentName;

    .line 176
    .line 177
    .line 178
    move-result-object v6

    .line 179
    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v6

    .line 183
    if-eqz v6, :cond_b

    .line 184
    .line 185
    move-object v1, v5

    .line 186
    :cond_c
    check-cast v1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 187
    .line 188
    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 193
    .line 194
    .line 195
    iput-object v1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 196
    .line 197
    new-instance p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;

    .line 198
    .line 199
    invoke-direct {p1, p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$1;-><init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 203
    .line 204
    .line 205
    new-instance p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;

    .line 206
    .line 207
    invoke-direct {p1, v2, p0}, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;-><init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, p1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 211
    .line 212
    .line 213
    :goto_3
    return-void
.end method
