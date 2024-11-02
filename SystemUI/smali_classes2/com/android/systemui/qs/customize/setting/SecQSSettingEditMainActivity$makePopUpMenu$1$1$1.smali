.class public final Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final synthetic $adapter:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;

.field public final synthetic $this_apply:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

.field public final synthetic $type:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->$adapter:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->$type:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->$this_apply:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->$adapter:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->getCount()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    move p4, p2

    .line 9
    :goto_0
    if-ge p4, p1, :cond_0

    .line 10
    .line 11
    iget-object p5, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->$adapter:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;

    .line 12
    .line 13
    invoke-virtual {p5, p4}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p5

    .line 17
    invoke-static {p5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    .line 19
    .line 20
    check-cast p5, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$EditPopUpContent;

    .line 21
    .line 22
    iput-boolean p2, p5, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$EditPopUpContent;->checked:Z

    .line 23
    .line 24
    add-int/lit8 p4, p4, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->$adapter:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$PopupListAdapter;

    .line 28
    .line 29
    invoke-virtual {p1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    check-cast p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$EditPopUpContent;

    .line 37
    .line 38
    const/4 p4, 0x1

    .line 39
    iput-boolean p4, p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu$EditPopUpContent;->checked:Z

    .line 40
    .line 41
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

    .line 42
    .line 43
    iget-object p5, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->$type:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;

    .line 44
    .line 45
    invoke-virtual {p5}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;->getId()I

    .line 46
    .line 47
    .line 48
    move-result p5

    .line 49
    invoke-virtual {p1, p5}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    iget-object p5, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

    .line 54
    .line 55
    iget-object v0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->$type:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;

    .line 56
    .line 57
    const v1, 0x7f0a0205

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Landroid/widget/TextView;

    .line 65
    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_1
    if-nez p3, :cond_2

    .line 70
    .line 71
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    aget-object v0, v1, v0

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->getFirst()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    goto :goto_1

    .line 86
    :cond_2
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    aget-object v0, v1, v0

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPSTRING;->getSecond()I

    .line 97
    .line 98
    .line 99
    move-result v0

    .line 100
    :goto_1
    invoke-virtual {p5, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object p5

    .line 104
    invoke-virtual {p1, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 105
    .line 106
    .line 107
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->this$0:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;

    .line 108
    .line 109
    iget-object p1, p1, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity;->editResources:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources;

    .line 110
    .line 111
    iget-object p5, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->$type:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$POPUPTYPE;

    .line 112
    .line 113
    invoke-virtual {p5}, Ljava/lang/Enum;->ordinal()I

    .line 114
    .line 115
    .line 116
    move-result p5

    .line 117
    if-nez p3, :cond_3

    .line 118
    .line 119
    move p2, p4

    .line 120
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->values()[Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    aget-object p1, p1, p5

    .line 128
    .line 129
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditResources$POPUPSELECTED;->updateValue(Z)V

    .line 130
    .line 131
    .line 132
    iget-object p0, p0, Lcom/android/systemui/qs/customize/setting/SecQSSettingEditMainActivity$makePopUpMenu$1$1$1;->$this_apply:Lcom/android/systemui/qs/customize/setting/SecQSSettingEditPopUpMenu;

    .line 133
    .line 134
    invoke-virtual {p0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 135
    .line 136
    .line 137
    return-void
.end method
