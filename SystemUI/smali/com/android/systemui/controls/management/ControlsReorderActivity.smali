.class public final Lcom/android/systemui/controls/management/ControlsReorderActivity;
.super Lcom/android/systemui/controls/BaseActivity;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public controlsListLayout:Landroid/widget/LinearLayout;

.field public final controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

.field public final controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

.field public final layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

.field public list:Ljava/util/ArrayList;

.field public noItemsLayout:Landroid/widget/LinearLayout;

.field public structureAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

.field public structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/controls/management/ControlsReorderActivity$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/android/systemui/controls/management/ControlsReorderActivity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/ui/util/AUIFacade;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p2, p8, p1}, Lcom/android/systemui/controls/BaseActivity;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/controls/controller/ControlsController;Lcom/android/systemui/settings/UserTracker;Ljava/util/concurrent/Executor;)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 5
    .line 6
    iput-object p4, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 7
    .line 8
    iput-object p5, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 9
    .line 10
    iput-object p6, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 11
    .line 12
    iput-object p7, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 13
    .line 14
    iput-object p8, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 15
    .line 16
    const-string p1, "ControlsReorderActivity"

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getBroadcastDispatcher()Lcom/android/systemui/broadcast/BroadcastDispatcher;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getCurrentStructureList()Ljava/util/ArrayList;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 2
    .line 3
    if-nez p0, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->elements:Ljava/util/List;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    instance-of v2, v1, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    .line 28
    .line 29
    if-eqz v2, :cond_1

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    new-instance p0, Ljava/util/ArrayList;

    .line 36
    .line 37
    const/16 v1, 0xa

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt__IterablesKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/systemui/controls/management/model/ReorderWrapper;

    .line 61
    .line 62
    iget-object v1, v1, Lcom/android/systemui/controls/management/model/ReorderWrapper;->displayName:Ljava/lang/CharSequence;

    .line 63
    .line 64
    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    return-object p0
.end method

.method public final getTAG()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final onBackPressed()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->getCurrentStructureList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    move-object v1, v2

    .line 11
    :cond_0
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    iget-object v1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    .line 18
    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    move-object v2, v1

    .line 23
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    const-string/jumbo v3, "saveStructureOrder origin="

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, ", current="

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    const-string v2, " "

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    new-instance v1, Landroid/content/Intent;

    .line 57
    .line 58
    const-class v2, Lcom/android/systemui/controls/management/CustomControlsFavoritingActivity;

    .line 59
    .line 60
    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .line 62
    .line 63
    const-string v2, "OrderList"

    .line 64
    .line 65
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putCharSequenceArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    const/4 v0, -0x1

    .line 69
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 70
    .line 71
    .line 72
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 11

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/controls/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    const-string v1, "android.intent.extra.COMPONENT_NAME"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Landroid/content/ComponentName;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 26
    .line 27
    .line 28
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    const-string v2, "extra_structure_lists"

    .line 33
    .line 34
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Ljava/util/ArrayList;

    .line 39
    .line 40
    if-nez v0, :cond_2

    .line 41
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    .line 44
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    .line 46
    .line 47
    :cond_2
    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    .line 48
    .line 49
    const v0, 0x7f0d0093

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 53
    .line 54
    .line 55
    const v0, 0x7f0a0bf4

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_3

    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const v3, 0x7f1303f9

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x1

    .line 91
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 92
    .line 93
    .line 94
    :cond_3
    const v0, 0x7f0a0609

    .line 95
    .line 96
    .line 97
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/FrameLayout;

    .line 102
    .line 103
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 108
    .line 109
    .line 110
    move-result-object v2

    .line 111
    const v3, 0x7f0b0037

    .line 112
    .line 113
    .line 114
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    .line 115
    .line 116
    .line 117
    move-result v2

    .line 118
    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 119
    .line 120
    invoke-virtual {v3, v0, v2}, Lcom/android/systemui/controls/ui/util/LayoutUtil;->setLayoutWeightWidthPercentBasic(Landroid/view/View;F)V

    .line 121
    .line 122
    .line 123
    const v0, 0x7f0a02b8

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    check-cast v0, Landroid/widget/LinearLayout;

    .line 131
    .line 132
    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    .line 133
    .line 134
    const v0, 0x7f0a0747

    .line 135
    .line 136
    .line 137
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 138
    .line 139
    .line 140
    move-result-object v0

    .line 141
    check-cast v0, Landroid/widget/LinearLayout;

    .line 142
    .line 143
    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    .line 144
    .line 145
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    .line 146
    .line 147
    if-nez v0, :cond_4

    .line 148
    .line 149
    move-object v0, v1

    .line 150
    :cond_4
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    .line 154
    .line 155
    if-nez v0, :cond_5

    .line 156
    .line 157
    move-object v0, v1

    .line 158
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 159
    .line 160
    .line 161
    move-result v0

    .line 162
    const/16 v2, 0x8

    .line 163
    .line 164
    const/4 v3, 0x0

    .line 165
    if-eqz v0, :cond_8

    .line 166
    .line 167
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    .line 168
    .line 169
    if-nez v0, :cond_6

    .line 170
    .line 171
    move-object v0, v1

    .line 172
    :cond_6
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    .line 176
    .line 177
    if-nez v0, :cond_7

    .line 178
    .line 179
    move-object v0, v1

    .line 180
    :cond_7
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsListLayout:Landroid/widget/LinearLayout;

    .line 185
    .line 186
    if-nez v0, :cond_9

    .line 187
    .line 188
    move-object v0, v1

    .line 189
    :cond_9
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 190
    .line 191
    .line 192
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->noItemsLayout:Landroid/widget/LinearLayout;

    .line 193
    .line 194
    if-nez v0, :cond_a

    .line 195
    .line 196
    move-object v0, v1

    .line 197
    :cond_a
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 198
    .line 199
    .line 200
    :goto_1
    const v0, 0x7f0a0ae8

    .line 201
    .line 202
    .line 203
    invoke-virtual {p0, v0}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    check-cast v0, Landroid/view/ViewStub;

    .line 208
    .line 209
    const v2, 0x7f0d00af

    .line 210
    .line 211
    .line 212
    invoke-virtual {v0, v2}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 216
    .line 217
    .line 218
    if-eqz p1, :cond_b

    .line 219
    .line 220
    const-string v0, "current_structure_list"

    .line 221
    .line 222
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequenceArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    .line 223
    .line 224
    .line 225
    move-result-object p1

    .line 226
    goto :goto_2

    .line 227
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->list:Ljava/util/ArrayList;

    .line 228
    .line 229
    if-nez p1, :cond_c

    .line 230
    .line 231
    move-object p1, v1

    .line 232
    :cond_c
    :goto_2
    new-instance v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 233
    .line 234
    invoke-direct {v0, p1}, Lcom/android/systemui/controls/management/model/ReorderStructureModel;-><init>(Ljava/util/List;)V

    .line 235
    .line 236
    .line 237
    iput-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 238
    .line 239
    new-instance p1, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 240
    .line 241
    iget-object v3, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->layoutUtil:Lcom/android/systemui/controls/ui/util/LayoutUtil;

    .line 242
    .line 243
    iget-object v4, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsUtil:Lcom/android/systemui/controls/ui/util/ControlsUtil;

    .line 244
    .line 245
    iget-object v5, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->controlsRuneWrapper:Lcom/android/systemui/controls/util/ControlsRuneWrapper;

    .line 246
    .line 247
    iget-object v6, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->auiFacade:Lcom/android/systemui/controls/ui/util/AUIFacade;

    .line 248
    .line 249
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 250
    .line 251
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 252
    .line 253
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 254
    .line 255
    .line 256
    move-result v7

    .line 257
    const/4 v8, 0x0

    .line 258
    const/16 v9, 0x20

    .line 259
    .line 260
    const/4 v10, 0x0

    .line 261
    move-object v2, p1

    .line 262
    invoke-direct/range {v2 .. v10}, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;-><init>(Lcom/android/systemui/controls/ui/util/LayoutUtil;Lcom/android/systemui/controls/ui/util/ControlsUtil;Lcom/android/systemui/controls/util/ControlsRuneWrapper;Lcom/android/systemui/controls/ui/util/AUIFacade;ILjava/util/function/Consumer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 263
    .line 264
    .line 265
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 266
    .line 267
    const p1, 0x7f0a05ca

    .line 268
    .line 269
    .line 270
    invoke-virtual {p0, p1}, Landroid/app/Activity;->requireViewById(I)Landroid/view/View;

    .line 271
    .line 272
    .line 273
    move-result-object p1

    .line 274
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 275
    .line 276
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 277
    .line 278
    if-nez v0, :cond_d

    .line 279
    .line 280
    move-object v0, v1

    .line 281
    :cond_d
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 282
    .line 283
    .line 284
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 285
    .line 286
    if-nez v0, :cond_e

    .line 287
    .line 288
    move-object v0, v1

    .line 289
    :cond_e
    iget-object v0, v0, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->itemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 290
    .line 291
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 295
    .line 296
    if-nez p1, :cond_f

    .line 297
    .line 298
    move-object p1, v1

    .line 299
    :cond_f
    iget-object v0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 300
    .line 301
    if-nez v0, :cond_10

    .line 302
    .line 303
    move-object v0, v1

    .line 304
    :cond_10
    iput-object v0, p1, Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;->model:Lcom/android/systemui/controls/management/model/StructureModel;

    .line 305
    .line 306
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureModel:Lcom/android/systemui/controls/management/model/ReorderStructureModel;

    .line 310
    .line 311
    if-nez p1, :cond_11

    .line 312
    .line 313
    move-object p1, v1

    .line 314
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsReorderActivity;->structureAdapter:Lcom/android/systemui/controls/management/adapter/CustomStructureAdapter;

    .line 315
    .line 316
    if-nez p0, :cond_12

    .line 317
    .line 318
    goto :goto_3

    .line 319
    :cond_12
    move-object v1, p0

    .line 320
    :goto_3
    iput-object v1, p1, Lcom/android/systemui/controls/management/model/ReorderStructureModel;->adapter:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 321
    .line 322
    return-void
.end method

.method public final onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const v1, 0x102002c

    .line 6
    .line 7
    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->onBackPressed()V

    .line 11
    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    :goto_0
    return p0
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/controls/management/ControlsReorderActivity;->getCurrentStructureList()Ljava/util/ArrayList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "current_structure_list"

    .line 6
    .line 7
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequenceArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
