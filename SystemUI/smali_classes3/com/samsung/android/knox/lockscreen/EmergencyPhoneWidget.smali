.class public Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;
.super Landroid/widget/LinearLayout;
.source "qb/87000731 7862a37e62df4d72b2921859baacdc80ea0c935793521606c8e11db53cc87e4f"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# static fields
.field public static final BG_COLOR:I = -0x1000000

.field public static final BG_COLOR_ONFOCUS:I

.field public static final TAG:Ljava/lang/String; = "LSO"

.field public static final TXT_COLOR:I = -0x1


# instance fields
.field public mBtn:Landroid/widget/Button;

.field public mContainer:Landroid/widget/LinearLayout;

.field public final mContext:Landroid/content/Context;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mImageMaxSize:I

.field public mImgView:Landroid/widget/ImageView;

.field public mPhoneAction:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const/16 v0, 0xdb

    .line 2
    .line 3
    const/16 v1, 0xe2

    .line 4
    .line 5
    const/16 v2, 0xc8

    .line 6
    .line 7
    const/16 v3, 0x52

    .line 8
    .line 9
    invoke-static {v2, v3, v0, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    sput v0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->BG_COLOR_ONFOCUS:I

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->initialize()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->initialize()V

    return-void
.end method


# virtual methods
.method public final callEmergencyNumber()V
    .locals 5

    .line 1
    const-string v0, "Failed to place Emergency call"

    .line 2
    .line 3
    const-string v1, "LSO"

    .line 4
    .line 5
    const-string v2, "tel:"

    .line 6
    .line 7
    :try_start_0
    new-instance v3, Landroid/content/Intent;

    .line 8
    .line 9
    const-string v4, "android.intent.action.CALL"

    .line 10
    .line 11
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    const/high16 v4, 0x10000000

    .line 15
    .line 16
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 17
    .line 18
    .line 19
    new-instance v4, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v3, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 38
    .line 39
    .line 40
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 41
    .line 42
    invoke-virtual {p0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :catch_0
    move-exception p0

    .line 47
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :catch_1
    move-exception p0

    .line 52
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public final initialize()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/16 v1, 0x32

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iput v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    .line 10
    .line 11
    const/16 v0, 0x11

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 14
    .line 15
    .line 16
    new-instance v1, Landroid/widget/LinearLayout;

    .line 17
    .line 18
    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 19
    .line 20
    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 24
    .line 25
    const/4 v2, 0x5

    .line 26
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 35
    .line 36
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    .line 38
    const/4 v2, -0x2

    .line 39
    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 46
    .line 47
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 57
    .line 58
    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    const/high16 v1, -0x1000000

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Landroid/widget/ImageView;

    .line 69
    .line 70
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 71
    .line 72
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    .line 74
    .line 75
    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    .line 76
    .line 77
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 78
    .line 79
    const v1, 0x1080731

    .line 80
    .line 81
    .line 82
    invoke-static {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 87
    .line 88
    const/4 v1, 0x0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    .line 91
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    iget v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    .line 96
    .line 97
    invoke-static {v0, v3, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->scaledBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 104
    .line 105
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v4

    .line 109
    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    .line 113
    .line 114
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    .line 118
    .line 119
    sget-object v3, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    .line 120
    .line 121
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 125
    .line 126
    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    .line 127
    .line 128
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 129
    .line 130
    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    .line 137
    .line 138
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    .line 142
    .line 143
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 144
    .line 145
    .line 146
    :cond_0
    new-instance v0, Landroid/widget/Button;

    .line 147
    .line 148
    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 149
    .line 150
    invoke-direct {v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 151
    .line 152
    .line 153
    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 154
    .line 155
    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 156
    .line 157
    const v4, 0x1040981

    .line 158
    .line 159
    .line 160
    invoke-static {v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v3

    .line 164
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    .line 166
    .line 167
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 168
    .line 169
    const/4 v3, 0x0

    .line 170
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 174
    .line 175
    const/4 v3, -0x1

    .line 176
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 180
    .line 181
    iget-object v3, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 182
    .line 183
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 184
    .line 185
    invoke-direct {v4, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 189
    .line 190
    .line 191
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setFocusable(Z)V

    .line 194
    .line 195
    .line 196
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 197
    .line 198
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    .line 199
    .line 200
    .line 201
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 202
    .line 203
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 204
    .line 205
    .line 206
    move-result-object v0

    .line 207
    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 208
    .line 209
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    const-string v1, "Calling "

    .line 6
    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->callEmergencyNumber()V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/4 p2, 0x0

    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    sget p1, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->BG_COLOR_ONFOCUS:I

    .line 16
    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    const/4 p2, 0x1

    .line 26
    if-ne p1, p2, :cond_1

    .line 27
    .line 28
    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 29
    .line 30
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 31
    .line 32
    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 33
    .line 34
    .line 35
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 36
    return p0
.end method

.method public final setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    .line 1
    const-string v0, "LSO"

    .line 2
    .line 3
    const-string v1, "SetAttribute("

    .line 4
    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", "

    .line 17
    .line 18
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string v1, ")"

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    .line 39
    .line 40
    const-string v1, "epw:phoneNumber"

    .line 41
    .line 42
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    .line 44
    .line 45
    move-result v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mPhoneAction:Ljava/lang/String;

    .line 53
    .line 54
    goto/16 :goto_0

    .line 55
    .line 56
    :cond_1
    const-string v1, "android:text"

    .line 57
    .line 58
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    if-eqz v1, :cond_2

    .line 63
    .line 64
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 65
    .line 66
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_2
    const-string v1, "epw:showBG"

    .line 76
    .line 77
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_3

    .line 82
    .line 83
    check-cast p2, Ljava/lang/Boolean;

    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 86
    .line 87
    .line 88
    move-result p1

    .line 89
    if-nez p1, :cond_9

    .line 90
    .line 91
    iget-object p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 92
    .line 93
    const/4 p2, 0x0

    .line 94
    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 95
    .line 96
    .line 97
    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :cond_3
    const-string v1, "epw:showText"

    .line 102
    .line 103
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 104
    .line 105
    .line 106
    move-result v1

    .line 107
    if-eqz v1, :cond_5

    .line 108
    .line 109
    check-cast p2, Ljava/lang/Boolean;

    .line 110
    .line 111
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    if-nez p1, :cond_4

    .line 116
    .line 117
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 118
    .line 119
    const/16 p1, 0x8

    .line 120
    .line 121
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    goto/16 :goto_0

    .line 125
    .line 126
    :cond_4
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 127
    .line 128
    const/4 p1, 0x0

    .line 129
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    const-string v1, "android:maxLines"

    .line 134
    .line 135
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    if-eqz v1, :cond_6

    .line 140
    .line 141
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mBtn:Landroid/widget/Button;

    .line 142
    .line 143
    check-cast p2, Ljava/lang/Integer;

    .line 144
    .line 145
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 146
    .line 147
    .line 148
    move-result p1

    .line 149
    invoke-virtual {p0, p1}, Landroid/widget/Button;->setMaxLines(I)V

    .line 150
    .line 151
    .line 152
    goto :goto_0

    .line 153
    :cond_6
    const-string v1, "android:gravity"

    .line 154
    .line 155
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 156
    .line 157
    .line 158
    move-result v1

    .line 159
    if-eqz v1, :cond_7

    .line 160
    .line 161
    check-cast p2, Ljava/lang/Integer;

    .line 162
    .line 163
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_7
    const-string v1, "android:orientation"

    .line 172
    .line 173
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_8

    .line 178
    .line 179
    check-cast p2, Ljava/lang/Boolean;

    .line 180
    .line 181
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 182
    .line 183
    .line 184
    move-result p1

    .line 185
    if-eqz p1, :cond_9

    .line 186
    .line 187
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContainer:Landroid/widget/LinearLayout;

    .line 188
    .line 189
    const/4 p1, 0x1

    .line 190
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_8
    const-string v1, "android:src"

    .line 195
    .line 196
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 197
    .line 198
    .line 199
    move-result p1

    .line 200
    if-eqz p1, :cond_9

    .line 201
    .line 202
    check-cast p2, Ljava/lang/String;

    .line 203
    .line 204
    iget p1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImageMaxSize:I

    .line 205
    .line 206
    invoke-static {p2, p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getBitmap(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    if-eqz p1, :cond_9

    .line 211
    .line 212
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 213
    .line 214
    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mContext:Landroid/content/Context;

    .line 215
    .line 216
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 217
    .line 218
    .line 219
    move-result-object v1

    .line 220
    invoke-direct {p2, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 221
    .line 222
    .line 223
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/EmergencyPhoneWidget;->mImgView:Landroid/widget/ImageView;

    .line 224
    .line 225
    if-eqz p0, :cond_9

    .line 226
    .line 227
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    .line 229
    .line 230
    goto :goto_0

    .line 231
    :catch_0
    move-exception p0

    .line 232
    const-string p1, "Exception: "

    .line 233
    .line 234
    invoke-static {p1, p0, v0}, Lcom/android/keyguard/EmergencyButton$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    :cond_9
    :goto_0
    return-void
.end method
