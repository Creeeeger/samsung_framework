.class Lcom/android/systemui/bixby2/controller/AppController$4;
.super Landroid/content/BroadcastReceiver;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bixby2/controller/AppController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bixby2/controller/AppController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/bixby2/controller/AppController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p2, "android.intent.action.SCREEN_ON"

    .line 6
    .line 7
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p2

    .line 11
    const-string v0, "AppController"

    .line 12
    .line 13
    if-nez p2, :cond_3

    .line 14
    .line 15
    const-string p2, "android.intent.action.ACTION_SCREEN_ON_BY_PROXIMITY"

    .line 16
    .line 17
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result p2

    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string p2, "android.intent.action.SCREEN_OFF"

    .line 25
    .line 26
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    move-result p2

    .line 30
    if-nez p2, :cond_1

    .line 31
    .line 32
    const-string p2, "android.intent.action.ACTION_SCREEN_OFF_BY_PROXIMITY"

    .line 33
    .line 34
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p2

    .line 38
    if-eqz p2, :cond_5

    .line 39
    .line 40
    :cond_1
    const-string/jumbo p2, "screen_off : action = "

    .line 41
    .line 42
    .line 43
    invoke-static {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 47
    .line 48
    if-eqz p1, :cond_2

    .line 49
    .line 50
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isFolderClosed()Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-nez p1, :cond_5

    .line 57
    .line 58
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;)Z

    .line 61
    .line 62
    .line 63
    move-result p1

    .line 64
    if-eqz p1, :cond_5

    .line 65
    .line 66
    const-string/jumbo p1, "screen_off : unregist SensorManager "

    .line 67
    .line 68
    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 73
    .line 74
    const/4 p2, 0x0

    .line 75
    invoke-static {p1, p2}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;Z)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 85
    .line 86
    invoke-static {p2}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorOrientationListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 91
    .line 92
    .line 93
    sget-boolean p1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    .line 94
    .line 95
    if-eqz p1, :cond_5

    .line 96
    .line 97
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 98
    .line 99
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 104
    .line 105
    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorTiltListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-virtual {p1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_3
    :goto_0
    const-string/jumbo p2, "screen_on : action = "

    .line 114
    .line 115
    .line 116
    invoke-static {p2, p1, v0}, Landroid/support/v4/media/MediaBrowserCompat$MediaBrowserImplBase$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    sget-boolean p1, Lcom/android/systemui/BasicRune;->VOLUME_SUB_DISPLAY_FULL_LAYOUT_VOLUME_DIALOG:Z

    .line 120
    .line 121
    if-eqz p1, :cond_4

    .line 122
    .line 123
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 124
    .line 125
    invoke-virtual {p1}, Lcom/android/systemui/bixby2/controller/AppController;->isFolderClosed()Z

    .line 126
    .line 127
    .line 128
    move-result p1

    .line 129
    if-nez p1, :cond_5

    .line 130
    .line 131
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 132
    .line 133
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_5

    .line 138
    .line 139
    const-string/jumbo p1, "screen_on : regist SensorManager "

    .line 140
    .line 141
    .line 142
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 146
    .line 147
    const/4 p2, 0x1

    .line 148
    invoke-static {p1, p2}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fputmSensorRegistered(Lcom/android/systemui/bixby2/controller/AppController;Z)V

    .line 149
    .line 150
    .line 151
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 152
    .line 153
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    iget-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 158
    .line 159
    invoke-static {p2}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorOrientationListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    .line 160
    .line 161
    .line 162
    move-result-object p2

    .line 163
    iget-object v0, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorOrientation(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/Sensor;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const/4 v1, 0x3

    .line 170
    invoke-virtual {p1, p2, v0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 171
    .line 172
    .line 173
    sget-boolean p1, Lcom/android/systemui/BasicRune;->BASIC_FOLDABLE_TYPE_FLIP:Z

    .line 174
    .line 175
    if-eqz p1, :cond_5

    .line 176
    .line 177
    iget-object p1, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 178
    .line 179
    invoke-static {p1}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorManager(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorManager;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    iget-object p2, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 184
    .line 185
    invoke-static {p2}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorTiltListener(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/SensorEventListener;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    iget-object p0, p0, Lcom/android/systemui/bixby2/controller/AppController$4;->this$0:Lcom/android/systemui/bixby2/controller/AppController;

    .line 190
    .line 191
    invoke-static {p0}, Lcom/android/systemui/bixby2/controller/AppController;->-$$Nest$fgetmSensorTilt(Lcom/android/systemui/bixby2/controller/AppController;)Landroid/hardware/Sensor;

    .line 192
    .line 193
    .line 194
    move-result-object p0

    .line 195
    invoke-virtual {p1, p2, p0, v1}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 196
    .line 197
    .line 198
    :cond_5
    :goto_1
    return-void
.end method
