.class public final Landroidx/preference/PreferenceFragment$4;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Landroidx/preference/PreferenceFragment;


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 9

    .line 1
    iget-object v0, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    .line 2
    .line 3
    iget-object v1, v0, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_8

    .line 7
    .line 8
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView;->mAdapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget v3, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 19
    .line 20
    const/16 v4, 0x140

    .line 21
    .line 22
    const/4 v5, 0x1

    .line 23
    if-gt v3, v4, :cond_0

    .line 24
    .line 25
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 26
    .line 27
    const v6, 0x3f8ccccd    # 1.1f

    .line 28
    .line 29
    .line 30
    cmpl-float v4, v4, v6

    .line 31
    .line 32
    if-gez v4, :cond_1

    .line 33
    .line 34
    :cond_0
    const/16 v4, 0x19b

    .line 35
    .line 36
    if-ge v3, v4, :cond_2

    .line 37
    .line 38
    iget v4, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 39
    .line 40
    const v6, 0x3fa66666    # 1.3f

    .line 41
    .line 42
    .line 43
    cmpl-float v4, v4, v6

    .line 44
    .line 45
    if-ltz v4, :cond_2

    .line 46
    .line 47
    :cond_1
    move v4, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_2
    const/4 v4, 0x2

    .line 50
    :goto_0
    instance-of v6, v1, Landroidx/preference/PreferenceGroupAdapter;

    .line 51
    .line 52
    if-eqz v6, :cond_7

    .line 53
    .line 54
    iget-object v6, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    .line 55
    .line 56
    move-object v7, v1

    .line 57
    check-cast v7, Landroidx/preference/PreferenceGroupAdapter;

    .line 58
    .line 59
    iget v8, v6, Landroidx/preference/PreferenceFragment;->mIsLargeLayout:I

    .line 60
    .line 61
    if-ne v4, v8, :cond_4

    .line 62
    .line 63
    if-ne v4, v5, :cond_3

    .line 64
    .line 65
    iget v8, v6, Landroidx/preference/PreferenceFragment;->mScreenWidthDp:I

    .line 66
    .line 67
    if-ne v8, v3, :cond_4

    .line 68
    .line 69
    iget v3, v7, Landroidx/preference/PreferenceGroupAdapter;->mParentWidth:I

    .line 70
    .line 71
    if-nez v3, :cond_3

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v5, v2

    .line 75
    :cond_4
    :goto_1
    if-eqz v5, :cond_7

    .line 76
    .line 77
    iput v4, v6, Landroidx/preference/PreferenceFragment;->mIsLargeLayout:I

    .line 78
    .line 79
    move v3, v2

    .line 80
    :goto_2
    invoke-virtual {v7}, Landroidx/preference/PreferenceGroupAdapter;->getItemCount()I

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    if-ge v3, v4, :cond_7

    .line 85
    .line 86
    invoke-virtual {v7, v3}, Landroidx/preference/PreferenceGroupAdapter;->getItem(I)Landroidx/preference/Preference;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    if-eqz v4, :cond_6

    .line 91
    .line 92
    invoke-static {v4}, Landroidx/preference/PreferenceGroupAdapter;->isSwitchLayout(Landroidx/preference/Preference;)Z

    .line 93
    .line 94
    .line 95
    move-result v5

    .line 96
    if-eqz v5, :cond_6

    .line 97
    .line 98
    instance-of v5, v4, Landroidx/preference/SwitchPreferenceCompat;

    .line 99
    .line 100
    if-nez v5, :cond_5

    .line 101
    .line 102
    instance-of v4, v4, Landroidx/preference/SwitchPreference;

    .line 103
    .line 104
    if-eqz v4, :cond_6

    .line 105
    .line 106
    :cond_5
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 107
    .line 108
    .line 109
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 110
    .line 111
    goto :goto_2

    .line 112
    :cond_7
    iget-object v1, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    .line 113
    .line 114
    iget v0, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 115
    .line 116
    iput v0, v1, Landroidx/preference/PreferenceFragment;->mScreenWidthDp:I

    .line 117
    .line 118
    iget-object v0, v1, Landroidx/preference/PreferenceFragment;->mList:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 125
    .line 126
    .line 127
    iget-object p0, p0, Landroidx/preference/PreferenceFragment$4;->this$0:Landroidx/preference/PreferenceFragment;

    .line 128
    .line 129
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Landroidx/preference/PreferenceFragment;->mOnPreDrawListener:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    .line 131
    .line 132
    :cond_8
    return v2
.end method
