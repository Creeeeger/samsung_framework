.class public final Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;
.super Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/CameraAvailabilityListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/CameraAvailabilityListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$SemCameraDeviceStateCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCameraDeviceStateChanged(Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    .line 2
    .line 3
    sget-object v1, Lcom/android/systemui/CameraAvailabilityListener;->Factory:Lcom/android/systemui/CameraAvailabilityListener$Factory;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz p3, :cond_3

    .line 11
    .line 12
    if-eq p3, v1, :cond_2

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq p3, v2, :cond_1

    .line 16
    .line 17
    if-eq p3, v0, :cond_0

    .line 18
    .line 19
    const-string v2, ""

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const-string v2, "CAMERA_STATE_CLOSED"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const-string v2, "CAMERA_STATE_IDLE"

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_2
    const-string v2, "CAMERA_STATE_ACTIVE"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_3
    const-string v2, "CAMERA_STATE_OPEN"

    .line 32
    .line 33
    :goto_0
    const-string/jumbo v3, "onCameraDeviceStateChanged: id="

    .line 34
    .line 35
    .line 36
    const-string v4, ", facing="

    .line 37
    .line 38
    const-string v5, ", state="

    .line 39
    .line 40
    invoke-static {v3, p1, v4, p2, v5}, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v2, ", client="

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v3, "CameraAvailabilityListener"

    .line 60
    .line 61
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    .line 63
    .line 64
    sget-object v2, Lcom/android/systemui/CameraAvailabilityListenerKt;->CAMERA_DEVICE_STATE_CALLBACK_FILTER_PACKAGE:[Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v2, p4}, Lkotlin/collections/ArraysKt___ArraysKt;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    move-result p4

    .line 70
    if-eqz p4, :cond_4

    .line 71
    .line 72
    return-void

    .line 73
    :cond_4
    if-ne p2, v1, :cond_5

    .line 74
    .line 75
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object p2

    .line 79
    iget-object p4, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    .line 80
    .line 81
    iget-object p4, p4, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStates:Ljava/util/HashMap;

    .line 82
    .line 83
    invoke-virtual {p4, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    .line 87
    .line 88
    iget-object p1, p1, Lcom/android/systemui/CameraAvailabilityListener;->cameraDeviceStates:Ljava/util/HashMap;

    .line 89
    .line 90
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 91
    .line 92
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    .line 105
    .line 106
    move-result p4

    .line 107
    if-eqz p4, :cond_9

    .line 108
    .line 109
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p4

    .line 113
    check-cast p4, Ljava/util/Map$Entry;

    .line 114
    .line 115
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Ljava/lang/Number;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-eq v2, v1, :cond_8

    .line 126
    .line 127
    if-nez v2, :cond_7

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_7
    const/4 v2, 0x0

    .line 131
    goto :goto_3

    .line 132
    :cond_8
    :goto_2
    move v2, v1

    .line 133
    :goto_3
    if-eqz v2, :cond_6

    .line 134
    .line 135
    invoke-interface {p4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    invoke-interface {p4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 140
    .line 141
    .line 142
    move-result-object p4

    .line 143
    invoke-virtual {p2, v2, p4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    goto :goto_1

    .line 147
    :cond_9
    invoke-interface {p2}, Ljava/util/Map;->size()I

    .line 148
    .line 149
    .line 150
    move-result p1

    .line 151
    if-lez p1, :cond_a

    .line 152
    .line 153
    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    .line 154
    .line 155
    invoke-static {p0}, Lcom/android/systemui/CameraAvailabilityListener;->access$notifyCameraActive(Lcom/android/systemui/CameraAvailabilityListener;)V

    .line 156
    .line 157
    .line 158
    goto :goto_5

    .line 159
    :cond_a
    if-nez p1, :cond_b

    .line 160
    .line 161
    if-ne p3, v0, :cond_b

    .line 162
    .line 163
    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener$cameraDeviceStateCallback$1;->this$0:Lcom/android/systemui/CameraAvailabilityListener;

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/systemui/CameraAvailabilityListener;->listeners:Ljava/util/List;

    .line 166
    .line 167
    check-cast p0, Ljava/util/ArrayList;

    .line 168
    .line 169
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 170
    .line 171
    .line 172
    move-result-object p0

    .line 173
    :goto_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    if-eqz p1, :cond_b

    .line 178
    .line 179
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    check-cast p1, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;

    .line 184
    .line 185
    invoke-interface {p1}, Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;->onHideCameraProtection()V

    .line 186
    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_b
    :goto_5
    return-void
.end method
