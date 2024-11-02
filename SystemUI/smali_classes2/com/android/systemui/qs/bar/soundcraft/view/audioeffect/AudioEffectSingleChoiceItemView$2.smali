.class public final Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 6

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$2;->this$0:Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;

    .line 8
    .line 9
    if-eqz p1, :cond_3

    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->chooserMenu:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->binding:Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectSingleChoiceItemViewBinding;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/systemui/qs/bar/soundcraft/viewbinding/AudioEffectSingleChoiceItemViewBinding;->root:Landroid/widget/LinearLayout;

    .line 21
    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto/16 :goto_1

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->viewModel:Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;->getOptionNames()Landroidx/lifecycle/MutableLiveData;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    check-cast v1, Ljava/lang/Iterable;

    .line 44
    .line 45
    new-instance v2, Ljava/util/ArrayList;

    .line 46
    .line 47
    const/16 v3, 0xa

    .line 48
    .line 49
    invoke-static {v1, v3}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 54
    .line 55
    .line 56
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    if-eqz v3, :cond_2

    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Ljava/lang/String;

    .line 71
    .line 72
    new-instance v4, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$EditPopUpContent;

    .line 73
    .line 74
    iget-object v5, v0, Lcom/android/systemui/qs/bar/soundcraft/viewmodel/base/BaseSingleChoiceViewModel;->selectedOptionName:Landroidx/lifecycle/MutableLiveData;

    .line 75
    .line 76
    invoke-virtual {v5}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    invoke-direct {v4, v3, v5}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$EditPopUpContent;-><init>(Ljava/lang/String;Z)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_2
    new-instance v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

    .line 92
    .line 93
    iget-object v1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->context:Landroid/content/Context;

    .line 94
    .line 95
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;-><init>(Landroid/content/Context;)V

    .line 96
    .line 97
    .line 98
    const/4 v3, -0x2

    .line 99
    invoke-virtual {v0, v3}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    const p1, 0x800003

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;->setDropDownGravity(I)V

    .line 109
    .line 110
    .line 111
    new-instance p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;

    .line 112
    .line 113
    invoke-direct {p1, v1, v2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 117
    .line 118
    .line 119
    new-instance p1, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$showChooser$1$1;

    .line 120
    .line 121
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$showChooser$1$1;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 125
    .line 126
    .line 127
    new-instance p1, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$showChooser$1$2;

    .line 128
    .line 129
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView$showChooser$1$2;-><init>(Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;)V

    .line 130
    .line 131
    .line 132
    iput-object p1, v0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;->dismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    .line 133
    .line 134
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;->show()V

    .line 135
    .line 136
    .line 137
    iput-object v0, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->chooserMenu:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->chooserMenu:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

    .line 141
    .line 142
    if-eqz p1, :cond_4

    .line 143
    .line 144
    invoke-virtual {p1}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 145
    .line 146
    .line 147
    :cond_4
    const/4 p1, 0x0

    .line 148
    iput-object p1, p0, Lcom/android/systemui/qs/bar/soundcraft/view/audioeffect/AudioEffectSingleChoiceItemView;->chooserMenu:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

    .line 149
    .line 150
    :goto_1
    return-void
.end method
