.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;


# direct methods
.method public constructor <init>(Landroidx/mediarouter/app/MediaRouteControllerDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    const v1, 0x1020019

    .line 7
    .line 8
    .line 9
    if-eq p1, v1, :cond_9

    .line 10
    .line 11
    const v2, 0x102001a

    .line 12
    .line 13
    .line 14
    if-ne p1, v2, :cond_0

    .line 15
    .line 16
    goto/16 :goto_5

    .line 17
    .line 18
    :cond_0
    const v1, 0x7f0a06db

    .line 19
    .line 20
    .line 21
    if-ne p1, v1, :cond_8

    .line 22
    .line 23
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 24
    .line 25
    iget-object v1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 26
    .line 27
    if-eqz v1, :cond_c

    .line 28
    .line 29
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mState:Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 30
    .line 31
    if-eqz p1, :cond_c

    .line 32
    .line 33
    iget v2, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 34
    .line 35
    const/4 v3, 0x3

    .line 36
    const/4 v4, 0x0

    .line 37
    if-ne v2, v3, :cond_1

    .line 38
    .line 39
    move v2, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    move v2, v4

    .line 42
    :goto_0
    const-wide/16 v5, 0x0

    .line 43
    .line 44
    if-eqz v2, :cond_3

    .line 45
    .line 46
    iget-wide v7, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 47
    .line 48
    const-wide/16 v9, 0x202

    .line 49
    .line 50
    and-long/2addr v7, v9

    .line 51
    cmp-long v3, v7, v5

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    move v3, v0

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v3, v4

    .line 58
    :goto_1
    if-eqz v3, :cond_3

    .line 59
    .line 60
    iget-object p1, v1, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->pause()V

    .line 67
    .line 68
    .line 69
    const v4, 0x7f130b96

    .line 70
    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_3
    if-eqz v2, :cond_5

    .line 74
    .line 75
    iget-wide v7, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 76
    .line 77
    const-wide/16 v9, 0x1

    .line 78
    .line 79
    and-long/2addr v7, v9

    .line 80
    cmp-long v3, v7, v5

    .line 81
    .line 82
    if-eqz v3, :cond_4

    .line 83
    .line 84
    move v3, v0

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    move v3, v4

    .line 87
    :goto_2
    if-eqz v3, :cond_5

    .line 88
    .line 89
    iget-object p1, v1, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 90
    .line 91
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->stop()V

    .line 96
    .line 97
    .line 98
    const v4, 0x7f130b98

    .line 99
    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_5
    if-nez v2, :cond_7

    .line 103
    .line 104
    iget-wide v2, p1, Landroid/support/v4/media/session/PlaybackStateCompat;->mActions:J

    .line 105
    .line 106
    const-wide/16 v7, 0x204

    .line 107
    .line 108
    and-long/2addr v2, v7

    .line 109
    cmp-long p1, v2, v5

    .line 110
    .line 111
    if-eqz p1, :cond_6

    .line 112
    .line 113
    goto :goto_3

    .line 114
    :cond_6
    move v0, v4

    .line 115
    :goto_3
    if-eqz v0, :cond_7

    .line 116
    .line 117
    iget-object p1, v1, Landroid/support/v4/media/session/MediaControllerCompat;->mImpl:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 118
    .line 119
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->getTransportControls()Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    invoke-virtual {p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControls;->play()V

    .line 124
    .line 125
    .line 126
    const v4, 0x7f130b97

    .line 127
    .line 128
    .line 129
    :cond_7
    :goto_4
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 130
    .line 131
    iget-object p1, p1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 132
    .line 133
    if-eqz p1, :cond_c

    .line 134
    .line 135
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    if-eqz p1, :cond_c

    .line 140
    .line 141
    if-eqz v4, :cond_c

    .line 142
    .line 143
    const/16 p1, 0x4000

    .line 144
    .line 145
    invoke-static {p1}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 150
    .line 151
    iget-object v0, v0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 152
    .line 153
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 158
    .line 159
    .line 160
    const-class v0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;

    .line 161
    .line 162
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    iget-object v1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 174
    .line 175
    iget-object v1, v1, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mContext:Landroid/content/Context;

    .line 176
    .line 177
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 185
    .line 186
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 187
    .line 188
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 189
    .line 190
    .line 191
    goto :goto_6

    .line 192
    :cond_8
    const v0, 0x7f0a06d9

    .line 193
    .line 194
    .line 195
    if-ne p1, v0, :cond_c

    .line 196
    .line 197
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 198
    .line 199
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 200
    .line 201
    .line 202
    goto :goto_6

    .line 203
    :cond_9
    :goto_5
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 204
    .line 205
    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRoute:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    .line 206
    .line 207
    invoke-virtual {v2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->isSelected()Z

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-eqz v2, :cond_b

    .line 212
    .line 213
    iget-object v2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 214
    .line 215
    iget-object v2, v2, Landroidx/mediarouter/app/MediaRouteControllerDialog;->mRouter:Landroidx/mediarouter/media/MediaRouter;

    .line 216
    .line 217
    if-ne p1, v1, :cond_a

    .line 218
    .line 219
    const/4 v0, 0x2

    .line 220
    :cond_a
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    .line 222
    .line 223
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouter;->unselect(I)V

    .line 224
    .line 225
    .line 226
    :cond_b
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$ClickListener;->this$0:Landroidx/mediarouter/app/MediaRouteControllerDialog;

    .line 227
    .line 228
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 229
    .line 230
    .line 231
    :cond_c
    :goto_6
    return-void
.end method
