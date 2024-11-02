.class final enum Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;
.super Ljava/lang/Enum;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum change_layout_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum check_orientation:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_all_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_all_application_except_currentapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_all_application_except_specificapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_foreground_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum close_multiple_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum doubletab_coverflex:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum exchange_position_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum launch_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum launch_mostrecent_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum maximize_app:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum open_recentsapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum replaceapp_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum start_multiwindow:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

.field public static final enum startapp_splitposition:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;


# direct methods
.method private static synthetic $values()[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;
    .locals 22

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 4
    .line 5
    sget-object v2, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_foreground_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 6
    .line 7
    sget-object v3, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 8
    .line 9
    sget-object v4, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->start_multiwindow:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 10
    .line 11
    sget-object v5, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->open_recentsapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 12
    .line 13
    sget-object v6, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_mostrecent_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 14
    .line 15
    sget-object v7, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_multiple_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 16
    .line 17
    sget-object v8, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 18
    .line 19
    sget-object v9, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->startapp_splitposition:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 20
    .line 21
    sget-object v10, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->exchange_position_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 22
    .line 23
    sget-object v11, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->change_layout_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 24
    .line 25
    sget-object v12, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->replaceapp_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 26
    .line 27
    sget-object v13, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->maximize_app:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 28
    .line 29
    sget-object v14, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_orientation:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 30
    .line 31
    sget-object v15, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 32
    .line 33
    sget-object v16, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 34
    .line 35
    sget-object v17, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 36
    .line 37
    sget-object v18, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 38
    .line 39
    sget-object v19, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_currentapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 40
    .line 41
    sget-object v20, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_specificapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 42
    .line 43
    sget-object v21, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->doubletab_coverflex:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 44
    .line 45
    filled-new-array/range {v0 .. v21}, [Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 2
    .line 3
    const-string v1, "close_application"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 10
    .line 11
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 12
    .line 13
    const-string v1, "close_all_application"

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 20
    .line 21
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 22
    .line 23
    const-string v1, "close_foreground_application"

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 27
    .line 28
    .line 29
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_foreground_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 30
    .line 31
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 32
    .line 33
    const-string v1, "launch_application"

    .line 34
    .line 35
    const/4 v2, 0x3

    .line 36
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 40
    .line 41
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 42
    .line 43
    const-string/jumbo v1, "start_multiwindow"

    .line 44
    .line 45
    .line 46
    const/4 v2, 0x4

    .line 47
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 48
    .line 49
    .line 50
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->start_multiwindow:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 51
    .line 52
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 53
    .line 54
    const-string/jumbo v1, "open_recentsapp"

    .line 55
    .line 56
    .line 57
    const/4 v2, 0x5

    .line 58
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->open_recentsapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 62
    .line 63
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 64
    .line 65
    const-string v1, "launch_mostrecent_application"

    .line 66
    .line 67
    const/4 v2, 0x6

    .line 68
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 69
    .line 70
    .line 71
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->launch_mostrecent_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 72
    .line 73
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 74
    .line 75
    const-string v1, "close_multiple_application"

    .line 76
    .line 77
    const/4 v2, 0x7

    .line 78
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 79
    .line 80
    .line 81
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_multiple_application:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 82
    .line 83
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 84
    .line 85
    const-string v1, "app_resizable"

    .line 86
    .line 87
    const/16 v2, 0x8

    .line 88
    .line 89
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 90
    .line 91
    .line 92
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->app_resizable:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 93
    .line 94
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 95
    .line 96
    const-string/jumbo v1, "startapp_splitposition"

    .line 97
    .line 98
    .line 99
    const/16 v2, 0x9

    .line 100
    .line 101
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 102
    .line 103
    .line 104
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->startapp_splitposition:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 105
    .line 106
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 107
    .line 108
    const-string v1, "exchange_position_splitscreen"

    .line 109
    .line 110
    const/16 v2, 0xa

    .line 111
    .line 112
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 113
    .line 114
    .line 115
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->exchange_position_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 116
    .line 117
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 118
    .line 119
    const-string v1, "change_layout_splitscreen"

    .line 120
    .line 121
    const/16 v2, 0xb

    .line 122
    .line 123
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->change_layout_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 127
    .line 128
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 129
    .line 130
    const-string/jumbo v1, "replaceapp_splitscreen"

    .line 131
    .line 132
    .line 133
    const/16 v2, 0xc

    .line 134
    .line 135
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 136
    .line 137
    .line 138
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->replaceapp_splitscreen:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 139
    .line 140
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 141
    .line 142
    const-string/jumbo v1, "maximize_app"

    .line 143
    .line 144
    .line 145
    const/16 v2, 0xd

    .line 146
    .line 147
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 148
    .line 149
    .line 150
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->maximize_app:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 151
    .line 152
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 153
    .line 154
    const-string v1, "check_orientation"

    .line 155
    .line 156
    const/16 v2, 0xe

    .line 157
    .line 158
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 159
    .line 160
    .line 161
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_orientation:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 162
    .line 163
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 164
    .line 165
    const-string v1, "check_splittype"

    .line 166
    .line 167
    const/16 v2, 0xf

    .line 168
    .line 169
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 170
    .line 171
    .line 172
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splittype:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 173
    .line 174
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 175
    .line 176
    const-string v1, "check_splitstate"

    .line 177
    .line 178
    const/16 v2, 0x10

    .line 179
    .line 180
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 181
    .line 182
    .line 183
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_splitstate:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 184
    .line 185
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 186
    .line 187
    const-string v1, "check_launchervisible"

    .line 188
    .line 189
    const/16 v2, 0x11

    .line 190
    .line 191
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 192
    .line 193
    .line 194
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->check_launchervisible:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 195
    .line 196
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 197
    .line 198
    const-string v1, "get_packageinsplit"

    .line 199
    .line 200
    const/16 v2, 0x12

    .line 201
    .line 202
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 203
    .line 204
    .line 205
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->get_packageinsplit:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 206
    .line 207
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 208
    .line 209
    const-string v1, "close_all_application_except_currentapp"

    .line 210
    .line 211
    const/16 v2, 0x13

    .line 212
    .line 213
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 214
    .line 215
    .line 216
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_currentapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 217
    .line 218
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 219
    .line 220
    const-string v1, "close_all_application_except_specificapp"

    .line 221
    .line 222
    const/16 v2, 0x14

    .line 223
    .line 224
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 225
    .line 226
    .line 227
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->close_all_application_except_specificapp:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 228
    .line 229
    new-instance v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 230
    .line 231
    const-string v1, "doubletab_coverflex"

    .line 232
    .line 233
    const/16 v2, 0x15

    .line 234
    .line 235
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;-><init>(Ljava/lang/String;I)V

    .line 236
    .line 237
    .line 238
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->doubletab_coverflex:Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 239
    .line 240
    invoke-static {}, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->$values()[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 241
    .line 242
    .line 243
    move-result-object v0

    .line 244
    sput-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 245
    .line 246
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->$VALUES:[Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/android/systemui/bixby2/interactor/AppControlActionInteractor$Action;

    .line 8
    .line 9
    return-object v0
.end method
