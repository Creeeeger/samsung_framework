.class public final Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1
    if-eqz p2, :cond_5

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 4
    .line 5
    iget-object v0, p2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->hidePreviewEdgeLighting()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    .line 15
    .line 16
    .line 17
    move-result p2

    .line 18
    const v0, 0x7f0a0108

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x1

    .line 22
    const/4 v2, 0x0

    .line 23
    if-ne p2, v0, :cond_2

    .line 24
    .line 25
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 36
    .line 37
    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    .line 38
    .line 39
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 43
    .line 44
    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 47
    .line 48
    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 50
    .line 51
    iget-object p2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    .line 52
    .line 53
    iput-boolean v1, p2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    .line 54
    .line 55
    iput v2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 56
    .line 57
    invoke-virtual {p2}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->notifyDataSetChanged()V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 61
    .line 62
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    .line 63
    .line 64
    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    const p2, 0x7f0a027f

    .line 73
    .line 74
    .line 75
    if-ne p1, p2, :cond_5

    .line 76
    .line 77
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 78
    .line 79
    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/widget/RadioButton;->isChecked()Z

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    if-eqz p1, :cond_3

    .line 86
    .line 87
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    .line 90
    .line 91
    invoke-virtual {p1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 95
    .line 96
    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mAutoRadioButton:Landroid/widget/RadioButton;

    .line 97
    .line 98
    invoke-virtual {p1, v1}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 99
    .line 100
    .line 101
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 102
    .line 103
    iget-object p2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    .line 104
    .line 105
    iput-boolean v2, p2, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->mAreDisabledAll:Z

    .line 106
    .line 107
    iget-boolean p2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mIsStartByRoutine:Z

    .line 108
    .line 109
    if-nez p2, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    invoke-static {p2}, Lcom/android/systemui/edgelighting/utils/EdgeLightingSettingUtils;->getEdgeLightingBasicColorIndex(Landroid/content/ContentResolver;)I

    .line 116
    .line 117
    .line 118
    move-result p2

    .line 119
    const/4 v0, 0x3

    .line 120
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 121
    .line 122
    .line 123
    move-result p2

    .line 124
    iput p2, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mSelectedColorIndex:I

    .line 125
    .line 126
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 127
    .line 128
    iget-object p1, p1, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorAdapter:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;

    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$ColorListAdapter;->notifyDataSetChanged()V

    .line 131
    .line 132
    .line 133
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity$1;->this$0:Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;

    .line 134
    .line 135
    iget-object p0, p0, Lcom/android/systemui/edgelighting/settings/EdgeLightingStyleActivity;->mColorRadioButton:Landroid/widget/RadioButton;

    .line 136
    .line 137
    invoke-virtual {p0, v2}, Landroid/widget/RadioButton;->setClickable(Z)V

    .line 138
    .line 139
    .line 140
    :cond_5
    :goto_0
    return-void
.end method
