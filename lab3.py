import cv2

x = cv2.imread('lab3sample.png')
black = cv2.cvtColor(x, cv2.COLOR_BGR2GRAY)
cv2.imshow('Original Image', x)
cv2.imshow('Black and white', black)
cv2.waitKey(0)
if cv2.waitKey(115) & 0x73 == ord('s'):
    cv2.imwrite('lab3bnw.png', black)
    cv2.destroyAllWindows()
    print('Image saved')
if cv2.waitKey(1) & 0xFF == ord('q'):
    cv2.destroyAllWindows()