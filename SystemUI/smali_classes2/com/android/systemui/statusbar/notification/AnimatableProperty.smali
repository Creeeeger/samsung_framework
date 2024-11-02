.class public abstract Lcom/android/systemui/statusbar/notification/AnimatableProperty;
.super Ljava/lang/Object;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"


# static fields
.field public static final ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

.field public static final Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    sget-object v0, Landroid/view/View;->X:Landroid/util/Property;

    .line 2
    .line 3
    const v1, 0x7f0a0d6b

    .line 4
    .line 5
    .line 6
    const v2, 0x7f0a0d6d

    .line 7
    .line 8
    .line 9
    const v3, 0x7f0a0d6c

    .line 10
    .line 11
    .line 12
    invoke-static {v1, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(IIILandroid/util/Property;)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Landroid/view/View;->Y:Landroid/util/Property;

    .line 16
    .line 17
    new-instance v4, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 18
    .line 19
    const v5, 0x7f0a0d71

    .line 20
    .line 21
    .line 22
    const v6, 0x7f0a0d70

    .line 23
    .line 24
    .line 25
    const v7, 0x7f0a0d72

    .line 26
    .line 27
    .line 28
    invoke-direct {v4, v7, v5, v6, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 29
    .line 30
    .line 31
    sput-object v4, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 32
    .line 33
    sget-object v0, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 34
    .line 35
    new-instance v4, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 36
    .line 37
    invoke-direct {v4, v2, v3, v1, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 38
    .line 39
    .line 40
    sput-object v4, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 41
    .line 42
    sget-object v0, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 43
    .line 44
    const v1, 0x7f0a090b

    .line 45
    .line 46
    .line 47
    const v2, 0x7f0a090d

    .line 48
    .line 49
    .line 50
    const v3, 0x7f0a090c

    .line 51
    .line 52
    .line 53
    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(IIILandroid/util/Property;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 57
    .line 58
    const v1, 0x7f0a090f

    .line 59
    .line 60
    .line 61
    const v2, 0x7f0a0911

    .line 62
    .line 63
    .line 64
    const v3, 0x7f0a0910

    .line 65
    .line 66
    .line 67
    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(IIILandroid/util/Property;)V

    .line 68
    .line 69
    .line 70
    sget-object v0, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 71
    .line 72
    new-instance v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 73
    .line 74
    const v2, 0x7f0a00b9

    .line 75
    .line 76
    .line 77
    const v3, 0x7f0a00bb

    .line 78
    .line 79
    .line 80
    const v4, 0x7f0a00ba

    .line 81
    .line 82
    .line 83
    invoke-direct {v1, v4, v2, v3, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 84
    .line 85
    .line 86
    sput-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->ALPHA:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 87
    .line 88
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;

    .line 89
    .line 90
    const-string v1, "ViewAbsoluteX"

    .line 91
    .line 92
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$1;-><init>(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    const v1, 0x7f0a001a

    .line 96
    .line 97
    .line 98
    const v2, 0x7f0a001c

    .line 99
    .line 100
    .line 101
    const v3, 0x7f0a001b

    .line 102
    .line 103
    .line 104
    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(IIILandroid/util/Property;)V

    .line 105
    .line 106
    .line 107
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;

    .line 108
    .line 109
    const-string v1, "ViewAbsoluteY"

    .line 110
    .line 111
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$2;-><init>(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    const v1, 0x7f0a001e

    .line 115
    .line 116
    .line 117
    const v2, 0x7f0a0020

    .line 118
    .line 119
    .line 120
    const v3, 0x7f0a001f

    .line 121
    .line 122
    .line 123
    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(IIILandroid/util/Property;)V

    .line 124
    .line 125
    .line 126
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;

    .line 127
    .line 128
    const-string v1, "ViewWidth"

    .line 129
    .line 130
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$3;-><init>(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const v1, 0x7f0a0cc0

    .line 134
    .line 135
    .line 136
    const v2, 0x7f0a0cc2

    .line 137
    .line 138
    .line 139
    const v3, 0x7f0a0cc1

    .line 140
    .line 141
    .line 142
    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(IIILandroid/util/Property;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;

    .line 146
    .line 147
    const-string v1, "ViewHeight"

    .line 148
    .line 149
    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$4;-><init>(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const v1, 0x7f0a0cb5

    .line 153
    .line 154
    .line 155
    const v2, 0x7f0a0cb7

    .line 156
    .line 157
    .line 158
    const v3, 0x7f0a0cb6

    .line 159
    .line 160
    .line 161
    invoke-static {v2, v3, v1, v0}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(IIILandroid/util/Property;)V

    .line 162
    .line 163
    .line 164
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static from(IIILandroid/util/Property;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 2
    .line 3
    invoke-direct {v0, p1, p2, p0, p3}, Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;-><init>(IIILandroid/util/Property;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract getAnimationEndTag()I
.end method

.method public abstract getAnimationStartTag()I
.end method

.method public abstract getAnimatorTag()I
.end method

.method public abstract getProperty()Landroid/util/Property;
.end method
