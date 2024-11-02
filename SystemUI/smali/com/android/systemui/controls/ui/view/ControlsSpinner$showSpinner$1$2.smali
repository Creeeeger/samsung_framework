.class public final Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field public final synthetic $itemAdapter:Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

.field public final synthetic this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;Lcom/android/systemui/controls/ui/view/ControlsSpinner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner<",
            "Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->$itemAdapter:Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3

    .line 1
    if-eqz p1, :cond_b

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->$itemAdapter:Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner$showSpinner$1$2;->this$0:Lcom/android/systemui/controls/ui/view/ControlsSpinner;

    .line 6
    .line 7
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 12
    .line 13
    iput p3, p2, Lcom/android/systemui/controls/ui/view/ControlsSpinner$ItemAdapter;->mSelectedIndex:I

    .line 14
    .line 15
    invoke-virtual {p2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 16
    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 19
    .line 20
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    if-nez p2, :cond_b

    .line 25
    .line 26
    iget-object p2, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->spinnerItemSelectedChangedCallback:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SpinnerItemSelectionChangedCallback;

    .line 27
    .line 28
    if-eqz p2, :cond_a

    .line 29
    .line 30
    iget-object p3, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 31
    .line 32
    check-cast p2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;

    .line 33
    .line 34
    check-cast p3, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 35
    .line 36
    move-object p3, p1

    .line 37
    check-cast p3, Lcom/android/systemui/controls/ui/ControlsSelectionItem;

    .line 38
    .line 39
    iget-object p2, p2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl$spinnerItemSelectionChangedCallback$1;->this$0:Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;

    .line 40
    .line 41
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object p4

    .line 45
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 46
    .line 47
    .line 48
    move-result-object p4

    .line 49
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 50
    .line 51
    .line 52
    move-result p5

    .line 53
    if-eqz p5, :cond_0

    .line 54
    .line 55
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p5

    .line 59
    check-cast p5, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 60
    .line 61
    iget-object v0, p5, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 62
    .line 63
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    iget-object p5, p5, Lcom/android/systemui/controls/controller/ComponentInfo;->structureInfos:Ljava/util/List;

    .line 67
    .line 68
    invoke-static {p5}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->getAllComponentInfo()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object p4

    .line 76
    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object p4

    .line 80
    :cond_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result p5

    .line 84
    if-eqz p5, :cond_2

    .line 85
    .line 86
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object p5

    .line 90
    move-object v0, p5

    .line 91
    check-cast v0, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 94
    .line 95
    iget-object v1, p3, Lcom/android/systemui/controls/ui/ControlsSelectionItem;->componentName:Landroid/content/ComponentName;

    .line 96
    .line 97
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    if-eqz v0, :cond_1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_2
    const/4 p5, 0x0

    .line 105
    :goto_1
    check-cast p5, Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 106
    .line 107
    if-nez p5, :cond_3

    .line 108
    .line 109
    goto/16 :goto_6

    .line 110
    .line 111
    :cond_3
    iget-object p3, p2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 112
    .line 113
    invoke-virtual {p3}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    iget-object p4, p5, Lcom/android/systemui/controls/controller/ComponentInfo;->componentName:Landroid/content/ComponentName;

    .line 118
    .line 119
    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    if-nez p3, :cond_a

    .line 124
    .line 125
    invoke-virtual {p2, p4}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saveFavorites(Landroid/content/ComponentName;)Z

    .line 126
    .line 127
    .line 128
    sget-object p3, Lcom/android/systemui/controls/controller/ComponentInfo;->Companion:Lcom/android/systemui/controls/controller/ComponentInfo$Companion;

    .line 129
    .line 130
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    sget-object p3, Lcom/android/systemui/controls/controller/ComponentInfo;->EMPTY_COMPONENT_INFO:Lcom/android/systemui/controls/controller/ComponentInfo;

    .line 134
    .line 135
    invoke-static {p5, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result p3

    .line 139
    const-string v0, ""

    .line 140
    .line 141
    if-eqz p3, :cond_4

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_4
    sget p3, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->$r8$clinit:I

    .line 145
    .line 146
    invoke-virtual {p2, p5}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isPanelComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    if-eqz p3, :cond_5

    .line 151
    .line 152
    new-instance v1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;

    .line 153
    .line 154
    new-instance v2, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 155
    .line 156
    invoke-virtual {p3}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 157
    .line 158
    .line 159
    move-result-object p3

    .line 160
    invoke-direct {v2, p3, p4}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    .line 161
    .line 162
    .line 163
    invoke-direct {v1, v2}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_5
    invoke-static {p2, p5}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getComponent(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 168
    .line 169
    .line 170
    move-result-object p3

    .line 171
    new-instance v1, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;

    .line 172
    .line 173
    new-instance v2, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 174
    .line 175
    if-eqz p3, :cond_6

    .line 176
    .line 177
    invoke-virtual {p3}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 178
    .line 179
    .line 180
    move-result-object p3

    .line 181
    goto :goto_2

    .line 182
    :cond_6
    move-object p3, v0

    .line 183
    :goto_2
    invoke-direct {v2, p3, p5}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 184
    .line 185
    .line 186
    invoke-direct {v1, v2}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;-><init>(Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 187
    .line 188
    .line 189
    :goto_3
    iget-object p3, p2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->customSelectedComponentRepository:Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository;

    .line 190
    .line 191
    check-cast p3, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;

    .line 192
    .line 193
    invoke-virtual {p3, v1}, Lcom/android/systemui/controls/panels/CustomSelectedComponentRepositoryImpl;->setSelectedComponent(Lcom/android/systemui/controls/panels/CustomSelectedComponentRepository$CustomSelectedComponent;)V

    .line 194
    .line 195
    .line 196
    :goto_4
    const/4 p3, 0x0

    .line 197
    iput-boolean p3, p2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isChanged:Z

    .line 198
    .line 199
    sget-boolean p3, Lcom/android/systemui/BasicRune;->CONTROLS_SAMSUNG_ANALYTICS:Z

    .line 200
    .line 201
    if-eqz p3, :cond_7

    .line 202
    .line 203
    new-instance p3, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSpinnerApp;

    .line 204
    .line 205
    iget-object v1, p2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->selectedItem:Lcom/android/systemui/controls/ui/SelectedItem;

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/android/systemui/controls/ui/SelectedItem;->getComponentName()Landroid/content/ComponentName;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-direct {p3, v1}, Lcom/android/systemui/controls/ui/util/SALogger$Event$TapSpinnerApp;-><init>(Ljava/lang/String;)V

    .line 216
    .line 217
    .line 218
    iget-object v1, p2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->saLogger:Lcom/android/systemui/controls/ui/util/SALogger;

    .line 219
    .line 220
    invoke-virtual {v1, p3}, Lcom/android/systemui/controls/ui/util/SALogger;->sendEvent(Lcom/android/systemui/controls/ui/util/SALogger$Event;)V

    .line 221
    .line 222
    .line 223
    :cond_7
    const/4 p3, 0x1

    .line 224
    iput-boolean p3, p2, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->adapterNeedToUpdateDataSet:Z

    .line 225
    .line 226
    invoke-virtual {p2, p5}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->isPanelComponent(Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 227
    .line 228
    .line 229
    move-result-object p3

    .line 230
    invoke-static {p2, p5}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$getComponent(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/controller/ComponentInfo;)Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    if-eqz p3, :cond_8

    .line 235
    .line 236
    new-instance p5, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;

    .line 237
    .line 238
    invoke-virtual {p3}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 239
    .line 240
    .line 241
    move-result-object p3

    .line 242
    invoke-direct {p5, p3, p4}, Lcom/android/systemui/controls/ui/SelectedItem$PanelItem;-><init>(Ljava/lang/CharSequence;Landroid/content/ComponentName;)V

    .line 243
    .line 244
    .line 245
    goto :goto_5

    .line 246
    :cond_8
    new-instance p3, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;

    .line 247
    .line 248
    if-eqz v1, :cond_9

    .line 249
    .line 250
    invoke-virtual {v1}, Lcom/android/systemui/controls/ControlsServiceInfo;->loadLabel()Ljava/lang/CharSequence;

    .line 251
    .line 252
    .line 253
    move-result-object v0

    .line 254
    :cond_9
    invoke-direct {p3, v0, p5}, Lcom/android/systemui/controls/ui/SelectedItem$ComponentItem;-><init>(Ljava/lang/CharSequence;Lcom/android/systemui/controls/controller/ComponentInfo;)V

    .line 255
    .line 256
    .line 257
    move-object p5, p3

    .line 258
    :goto_5
    invoke-static {p2, p5}, Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;->access$reload(Lcom/android/systemui/controls/ui/CustomControlsUiControllerImpl;Lcom/android/systemui/controls/ui/SelectedItem;)V

    .line 259
    .line 260
    .line 261
    :cond_a
    :goto_6
    iput-object p1, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->previous:Lcom/android/systemui/controls/ui/view/ControlsSpinner$SelectionItem;

    .line 262
    .line 263
    sget-boolean p1, Lcom/android/systemui/BasicRune;->CONTROLS_BADGE:Z

    .line 264
    .line 265
    if-eqz p1, :cond_b

    .line 266
    .line 267
    iget-object p0, p0, Lcom/android/systemui/controls/ui/view/ControlsSpinner;->badgeProvider:Lcom/android/systemui/controls/controller/util/BadgeProvider;

    .line 268
    .line 269
    if-eqz p0, :cond_b

    .line 270
    .line 271
    check-cast p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    .line 272
    .line 273
    invoke-virtual {p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->dismiss()V

    .line 274
    .line 275
    .line 276
    :cond_b
    return-void
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .line 1
    return-void
.end method
