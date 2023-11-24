.class Lcom/netease/lotr/Launcher$1;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/lotr/Launcher;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final UVS:[F

.field private VERTICE:[F

.field private m_bg_sampler:I

.field private m_logoHeight:I

.field private m_logoWidth:I

.field private m_pos_attrib:I

.field private m_pos_buffer:Ljava/nio/FloatBuffer;

.field private m_program:I

.field private final m_ps_code:Ljava/lang/String;

.field private m_texture:I

.field private m_uv_attrib:I

.field private m_uv_buffer:Ljava/nio/FloatBuffer;

.field private final m_vs_code:Ljava/lang/String;

.field final synthetic this$0:Lcom/netease/lotr/Launcher;


# direct methods
.method constructor <init>(Lcom/netease/lotr/Launcher;)V
    .locals 1

    .line 330
    iput-object p1, p0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x8

    .line 331
    new-array v0, p1, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/netease/lotr/Launcher$1;->VERTICE:[F

    .line 332
    new-array p1, p1, [F

    fill-array-data p1, :array_1

    iput-object p1, p0, Lcom/netease/lotr/Launcher$1;->UVS:[F

    const-string p1, "attribute vec4 pos;\nattribute vec4 uv_in;\nvarying vec2 uv_out;\nvoid main()\n{\n\tgl_Position = pos;\n\tuv_out = uv_in.xy;\n}\n"

    .line 333
    iput-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_vs_code:Ljava/lang/String;

    const-string p1, "varying highp vec2 uv_out;\nuniform sampler2D bg;\nvoid main()\n{\n\tgl_FragColor = texture2D(bg, uv_out);\n}\n"

    .line 343
    iput-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_ps_code:Ljava/lang/String;

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    const/4 p1, 0x0

    .line 358
    iput p1, p0, Lcom/netease/lotr/Launcher$1;->m_logoWidth:I

    .line 359
    iput p1, p0, Lcom/netease/lotr/Launcher$1;->m_logoHeight:I

    return-void

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public loadShader(ILjava/lang/String;)I
    .locals 0

    .line 364
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result p1

    .line 367
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 368
    invoke-static {p1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    return p1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13

    .line 491
    iget-object p1, p0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$700(Lcom/netease/lotr/Launcher;)[F

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    iget-object v1, p0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$700(Lcom/netease/lotr/Launcher;)[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v2}, Lcom/netease/lotr/Launcher;->access$700(Lcom/netease/lotr/Launcher;)[F

    move-result-object v2

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v3}, Lcom/netease/lotr/Launcher;->access$700(Lcom/netease/lotr/Launcher;)[F

    move-result-object v3

    const/4 v4, 0x3

    aget v3, v3, v4

    invoke-static {p1, v1, v2, v3}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    const/16 p1, 0x4000

    .line 492
    invoke-static {p1}, Landroid/opengl/GLES20;->glClear(I)V

    .line 493
    iget-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    if-eqz p1, :cond_0

    .line 495
    iget p1, p0, Lcom/netease/lotr/Launcher$1;->m_program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glUseProgram(I)V

    .line 496
    iget p1, p0, Lcom/netease/lotr/Launcher$1;->m_pos_attrib:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 497
    iget p1, p0, Lcom/netease/lotr/Launcher$1;->m_uv_attrib:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 498
    iget v1, p0, Lcom/netease/lotr/Launcher$1;->m_pos_attrib:I

    const/4 v2, 0x2

    const/16 v3, 0x1406

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/netease/lotr/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v1 .. v6}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 499
    iget v7, p0, Lcom/netease/lotr/Launcher$1;->m_uv_attrib:I

    const/4 v8, 0x2

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v12, p0, Lcom/netease/lotr/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    invoke-static/range {v7 .. v12}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    const p1, 0x84c0

    .line 500
    invoke-static {p1}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 p1, 0xde1

    .line 501
    iget v1, p0, Lcom/netease/lotr/Launcher$1;->m_texture:I

    invoke-static {p1, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 502
    iget p1, p0, Lcom/netease/lotr/Launcher$1;->m_bg_sampler:I

    invoke-static {p1, v0}, Landroid/opengl/GLES20;->glUniform1i(II)V

    const/4 p1, 0x5

    const/4 v1, 0x4

    .line 503
    invoke-static {p1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9

    .line 440
    iget-object v0, p0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/netease/lotr/Launcher;->access$502(Lcom/netease/lotr/Launcher;I)I

    .line 441
    iget-object v0, p0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v0}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/netease/lotr/Launcher;->access$602(Lcom/netease/lotr/Launcher;I)I

    const/4 v0, 0x0

    .line 442
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    if-le p3, p2, :cond_0

    move v8, p3

    move p3, p2

    move p2, v8

    :cond_0
    const p1, 0x44a6c000    # 1334.0f

    const v1, 0x443b8000    # 750.0f

    int-to-float p2, p2

    div-float p1, p2, p1

    int-to-float p3, p3

    div-float v1, p3, v1

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    move p1, v1

    .line 460
    :cond_1
    iget v1, p0, Lcom/netease/lotr/Launcher$1;->m_logoWidth:I

    int-to-float v1, v1

    .line 461
    iget v2, p0, Lcom/netease/lotr/Launcher$1;->m_logoHeight:I

    int-to-float v2, v2

    mul-float v1, v1, p1

    mul-float v2, v2, p1

    sub-float p1, p2, v1

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float p1, p1, v3

    sub-float v4, p3, v2

    mul-float v4, v4, v3

    div-float v3, p1, p2

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v3, v3, v5

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v3, v6

    div-float v7, v4, p3

    mul-float v7, v7, v5

    sub-float/2addr v7, v6

    add-float/2addr p1, v1

    div-float/2addr p1, p2

    mul-float p1, p1, v5

    sub-float/2addr p1, v6

    add-float/2addr v4, v2

    div-float/2addr v4, p3

    mul-float v4, v4, v5

    sub-float/2addr v4, v6

    const/16 p2, 0x8

    .line 474
    new-array p2, p2, [F

    aput v3, p2, v0

    const/4 p3, 0x1

    aput v7, p2, p3

    const/4 p3, 0x2

    aput p1, p2, p3

    const/4 p3, 0x3

    aput v7, p2, p3

    const/4 p3, 0x4

    aput v3, p2, p3

    const/4 v1, 0x5

    aput v4, p2, v1

    const/4 v1, 0x6

    aput p1, p2, v1

    const/4 p1, 0x7

    aput v4, p2, p1

    iput-object p2, p0, Lcom/netease/lotr/Launcher$1;->VERTICE:[F

    .line 481
    iget-object p1, p0, Lcom/netease/lotr/Launcher$1;->VERTICE:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 482
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 483
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    .line 484
    iget-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lcom/netease/lotr/Launcher$1;->VERTICE:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 485
    iget-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 6

    const/16 p1, 0x1f01

    .line 376
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v2

    const/16 p1, 0x1f00

    .line 377
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v3

    const/16 p1, 0x1f03

    .line 378
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object v5

    const/16 p1, 0x1f02

    .line 379
    invoke-static {p1}, Landroid/opengl/GLES20;->glGetString(I)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "null"

    :cond_0
    move-object v4, p1

    .line 381
    iget-object p1, p0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {p1}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object p1

    new-instance p2, Lcom/netease/lotr/Launcher$1$1;

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/netease/lotr/Launcher$1$1;-><init>(Lcom/netease/lotr/Launcher$1;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lcom/netease/lotr/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    const p1, 0x8b31

    const-string p2, "attribute vec4 pos;\nattribute vec4 uv_in;\nvarying vec2 uv_out;\nvoid main()\n{\n\tgl_Position = pos;\n\tuv_out = uv_in.xy;\n}\n"

    .line 397
    invoke-virtual {p0, p1, p2}, Lcom/netease/lotr/Launcher$1;->loadShader(ILjava/lang/String;)I

    move-result p1

    const p2, 0x8b30

    const-string v0, "varying highp vec2 uv_out;\nuniform sampler2D bg;\nvoid main()\n{\n\tgl_FragColor = texture2D(bg, uv_out);\n}\n"

    .line 398
    invoke-virtual {p0, p2, v0}, Lcom/netease/lotr/Launcher$1;->loadShader(ILjava/lang/String;)I

    move-result p2

    .line 399
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v0

    iput v0, p0, Lcom/netease/lotr/Launcher$1;->m_program:I

    .line 400
    iget v0, p0, Lcom/netease/lotr/Launcher$1;->m_program:I

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 401
    iget p1, p0, Lcom/netease/lotr/Launcher$1;->m_program:I

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 402
    iget p1, p0, Lcom/netease/lotr/Launcher$1;->m_program:I

    invoke-static {p1}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 403
    iget p1, p0, Lcom/netease/lotr/Launcher$1;->m_program:I

    const-string p2, "pos"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/lotr/Launcher$1;->m_pos_attrib:I

    .line 404
    iget p1, p0, Lcom/netease/lotr/Launcher$1;->m_program:I

    const-string p2, "uv_in"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/lotr/Launcher$1;->m_uv_attrib:I

    .line 405
    iget p1, p0, Lcom/netease/lotr/Launcher$1;->m_program:I

    const-string p2, "bg"

    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/netease/lotr/Launcher$1;->m_bg_sampler:I

    const/4 p1, 0x0

    .line 407
    iput-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_pos_buffer:Ljava/nio/FloatBuffer;

    .line 409
    iget-object p1, p0, Lcom/netease/lotr/Launcher$1;->UVS:[F

    array-length p1, p1

    mul-int/lit8 p1, p1, 0x4

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    .line 410
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 411
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    .line 412
    iget-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    iget-object p2, p0, Lcom/netease/lotr/Launcher$1;->UVS:[F

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 413
    iget-object p1, p0, Lcom/netease/lotr/Launcher$1;->m_uv_buffer:Ljava/nio/FloatBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p1, 0x1

    .line 416
    new-array v0, p1, [I

    .line 417
    invoke-static {p1, v0, p2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 418
    aget p1, v0, p2

    iput p1, p0, Lcom/netease/lotr/Launcher$1;->m_texture:I

    .line 419
    iget p1, p0, Lcom/netease/lotr/Launcher$1;->m_texture:I

    const/16 v0, 0xde1

    invoke-static {v0, p1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    const/16 p1, 0x2801

    const/16 v1, 0x2601

    .line 420
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2800

    .line 421
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2802

    const v1, 0x812f

    .line 422
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    const/16 p1, 0x2803

    .line 423
    invoke-static {v0, p1, v1}, Landroid/opengl/GLES20;->glTexParameteri(III)V

    .line 424
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 425
    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 426
    iget-object v1, p0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v1}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/netease/lotr/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/netease/lotr/Launcher$1;->this$0:Lcom/netease/lotr/Launcher;

    invoke-static {v2}, Lcom/netease/lotr/Launcher;->access$100(Lcom/netease/lotr/Launcher;)Lcom/netease/lotr/Launcher;

    move-result-object v2

    const-string v3, "logo"

    invoke-static {v2, v3}, Lcom/netease/lotr/Launcher;->access$400(Lcom/netease/lotr/Launcher;Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 427
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/netease/lotr/Launcher$1;->m_logoWidth:I

    .line 428
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/netease/lotr/Launcher$1;->m_logoHeight:I

    .line 430
    invoke-static {v0, p2, p1, p2}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 431
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    const/16 p1, 0xbe2

    .line 433
    invoke-static {p1}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 p1, 0x302

    const/16 p2, 0x303

    .line 434
    invoke-static {p1, p2}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    return-void
.end method
